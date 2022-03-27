import { AfterViewChecked, AfterViewInit, Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { AuthService } from '../auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.css']
})
export class BlogComponent{
  @ViewChild('coment') coment={} as ElementRef;
  login=this.auth.auth()
  shapelike:string='like fa fa-heart-o'
  userLiked:any
  date:any;
  showcontent:any;
  coments:any
    constructor(private route: ActivatedRoute,private http: HttpClient,private auth:AuthService,private routeer:Router) {
      this.getcoment()
    }
   
    getcoment(){
      var idusers:any=[]
      var routeParams = this.route.snapshot.paramMap;
      var id = routeParams.get('id');  
      this.http.get(`http://localhost/blog/server/comment/comentblog.php?id=${id}`).subscribe((res:any)=>{
        this.coments=res
        for (let index = 0; index < res.length; index++) {
          idusers.push(res[index].userid);
        }
        this.http.post(`http://localhost/blog/server/comment/user.php`,idusers).subscribe((res:any)=>{
          console.log(this.coments);
          console.log(res);
          for (let index = 0; index < res.length; index++) {
            for (let index2 = 0; index2 < this.coments.length; index2++) {
                if (res[index].id==this.coments[index2].userid) {
                  this.coments[index2]["img"]=res[index].img
                }
            }
          }
          console.log(this.coments);

        })
      })

      
      if (Number(id)) {
          this.http.get(`http://localhost/blog/server/Blog.php?id=${id}`).subscribe((response)=>{
              this.date= JSON.stringify(response)
              this.date =JSON.parse(this.date)
                      this.showcontent=this.date
                      if (this.auth.auth()==true) {
                          this.userLiked = this.userLiked=this.auth.getUserDate()
                          this.userLiked = this.userLiked.liked
                          this.userLiked = this.userLiked.split(',')
                          function check(id2:any) {
                              return id2 == id;
                          }
                         var checklike= this.userLiked.find(check)
                         if (checklike) {
                          this.shapelike='like fa fa-heart'
                         }else{
                          this.shapelike='like fa fa-heart-o'
                         }
                      }
           })
      }
    }
    likechang(e:Event){
        if (this.auth.auth()==true) {
            let routeParams = this.route.snapshot.paramMap;
            let id = routeParams.get('id');
            var userid:any=this.auth.getUserDate()
            userid = userid.id
            if ((e.target as HTMLInputElement).className=='like fa fa-heart-o'||(e.target as HTMLInputElement).className=='fa fa-heart-o like') {
              (e.target as HTMLInputElement).className='like fa fa-heart';
              var last =Number((e.target as HTMLInputElement).innerHTML)
              last++
              (e.target as HTMLInputElement).innerHTML=String(last)
              this.http.get(`http://localhost/blog/server/like/add.php?id=${id}&userid=${userid}`).subscribe(()=>{
                this.auth.getUsertrfresh()
              })
            }else{
              (e.target as HTMLInputElement).className='like fa fa-heart-o';
              var last =Number((e.target as HTMLInputElement).innerHTML)
              last--
              (e.target as HTMLInputElement).innerHTML=String(last)
              this.http.get(`http://localhost/blog/server/like/mines.php?id=${id}&userid=${userid}`).subscribe(()=>{
                this.auth.getUsertrfresh()
              })
            }
          }else{
            alert("ابتدا ثبت نام کنید")
            this.routeer.navigate(['./loginuser'])
          }
    }
    sendcoment(){
      var userid:any = this.auth.getUserDate()
      userid =userid.id
      var blogid=this.route.snapshot.paramMap.get('id');
      var date={
        coment : this.coment.nativeElement.value,
        userid :userid,
        blogid : blogid
      }
      this.http.post('http://localhost/blog/server/comment/addcoment.php',date).subscribe(()=>{
          this.getcoment()
      })
    }
}
