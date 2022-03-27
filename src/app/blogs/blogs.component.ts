import { AfterViewChecked, AfterViewInit, Component, ElementRef, OnDestroy, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-blogs',
  templateUrl: './blogs.component.html',
  styleUrls: ['./blogs.component.css']
})

export class BlogsComponent implements OnInit{
  @ViewChild('pagenate') pagenate={} as ElementRef
  date:any='';
  userLiked:any
  page=1;
  countpage:any=[]
  countpageshow:any=[]
  constructor(private http: HttpClient,private routeer :Router,private route: ActivatedRoute,private auth:AuthService){
      this.blogs()
  }
  blogs(): void{
    var param = this.route.snapshot.paramMap.get('content')
    if (param==null) {
      if (this.auth.auth()==true) {
        this.userLiked = this.userLiked=this.auth.getUserDate()
        this.userLiked = this.userLiked.liked
        this.userLiked = this.userLiked.split(',')
      }
      this.http.get(`http://localhost/blog/server/allBlog.php?page=${this.page}`).subscribe(
        (response:any)=>{
          for (let index = 0; index < response[response.length-1]-1; index++) {
              this.countpage[index]=index+1
          }      
          this.countpageshow = this.countpage.slice(0,3)     
          response.pop(response.length-1) 
          this.date= JSON.stringify(response)
          this.date =JSON.parse(this.date)
          for (let index = 0; index < this.date.length; index++) {          
                this.date[index].class="like fa fa-heart-o";
          }  
          for (let index = 0; index < this.date.length; index++) {
            for (let index2 = 0; index2 < this.userLiked.length; index2++) {
              if (this.date[index].id==this.userLiked[index2]) {
                this.date[index].class="like fa fa-heart";
              }
            }
          }  
        }
        
      )
    }else{
      this.route.params.subscribe((param)=>{
          this.http.get(`http://localhost/blog/server/search.php?like=${param['content']}&page=${this.page}`).subscribe(
          (response:any)=>{
            for (let index = 0; index < response[response.length-1]-1; index++) {
              this.countpage[index]=index+1
            }      
            if (response=='0') {
              this.date=null
            }  
            if (this.countpage>4) {
              this.countpageshow = this.countpage.slice(0,3)     
            }else{
              this.countpageshow=this.countpage
            }
            response.pop(response.length-1)
            this.date= JSON.stringify(response)
            this.date =JSON.parse(this.date)
           
              if (this.auth.auth()==true) {
                this.userLiked = this.userLiked=this.auth.getUserDate()
                this.userLiked = this.userLiked.liked
                this.userLiked = this.userLiked.split(',')
              }
              for (let index = 0; index < this.date.length; index++) {          
                this.date[index].class="like fa fa-heart-o";
              }       
                for (let index = 0; index < this.date.length; index++) {
                  for (let index2 = 0; index2 < this.userLiked.length; index2++) {
                    if (this.date[index].id==this.userLiked[index2]) {
                      this.date[index].class="like fa fa-heart";
                    }
                }
              }
            
          }
        )
      })
    }   
  }
  
  pagechang(event:any){
      var pagenate = this.pagenate.nativeElement.childNodes
      for (let index = 0; index < pagenate.length; index++) {
        pagenate[index].className=''
      }
      (event.target as HTMLElement).className='active'
      var page:any = (event.target as HTMLElement).innerHTML
      this.page=Number(page)+1
      this.blogs()
  }
  nextpags(){
    var pagenate = this.pagenate.nativeElement.childNodes 
    var activpage=null
    for (let index = 0; index < pagenate.length; index++) {
      if (pagenate[index].className=='active') {
        activpage =  pagenate[index].innerHTML
      }
     
      if (pagenate[pagenate.length-3].innerHTML<this.countpage.length) {
        pagenate[index].innerHTML= Number(pagenate[index].innerHTML)+1
      }
    }
    for (let index = 0; index < pagenate.length; index++) {
      if (pagenate[index].innerHTML!=activpage) {
          pagenate[index].className=''
      }else if(pagenate[index].innerHTML==activpage){
        pagenate[index].className='active'
      }
      
    }
  }
  prevepags(){
    var pagenate = this.pagenate.nativeElement.childNodes
    var activpage=null
    if (pagenate[0].innerHTML!=0) {
      for (let index = 0; index < pagenate.length; index++) {
        if (pagenate[index].className=='active') {
          activpage =  pagenate[index].innerHTML
        }
        pagenate[index].innerHTML= Number(pagenate[index].innerHTML)-1
  
      }    
    }
    for (let index = 0; index < pagenate.length; index++) {
      if (pagenate[index].innerHTML!=activpage) {
          pagenate[index].className=''
      }else if(pagenate[index].innerHTML==activpage){
        pagenate[index].className='active'
      }
      
    }
  }
  likechang(e:Event){
    if (this.auth.auth()==true) {
      var id = (e.target as HTMLInputElement).id
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
  ngOnInit(): void {
    
  }
}
