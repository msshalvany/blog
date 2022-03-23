import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
 userDste=null
 login:any =null
 date:any
  constructor(private auth:AuthService,private router :Router,private route:ActivatedRoute, private http:HttpClient) {
    this.userDste=this.auth.getUserDate()
    if (this.userDste) {
       var  id =this.userDste['id']
       this.http.post('http://localhost/blog/server/bloguser.php',id).subscribe(
        (response)=>{
            this.date= JSON.stringify(response)
            this.date =JSON.parse(this.date)
        }
    )   
}
    }
  
  delblog(id:any){
      this.http.get(`http://localhost/blog/server/delblog.php?id=${id}`).subscribe(()=>{
        this.router.navigate(['home'])
      })
  }
  logiot(){
    this.auth.logout()
    this.userDste=null
    this.auth.setDateUser(null)
    this.router.navigate([''])
  }
  ngOnInit(): void {
  }
}
