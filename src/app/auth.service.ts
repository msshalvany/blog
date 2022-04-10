import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, observable, Observable, Observer, Subscriber } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  constructor(private http:HttpClient){
      // setInterval(() => {
      //   this.getUsertrfresh()
      // }, 10000);
  }
  private behaveuseer = new BehaviorSubject(false)
  user = this.behaveuseer.asObservable();
  private behaveuserDate = new BehaviorSubject(null)
  userDate = this.behaveuseer.asObservable();
  
  setDateUser(date:any){
    this.behaveuserDate.next(date)
  }
  getUserDate(){
    return this.behaveuserDate.value
  }
  getUsertrfresh():void{
   if (this.auth()) {
    var username:any=this.getUserDate()
    username=username.username
    var password:any=this.getUserDate()
    password=password.password
    var date={
      username : username,
      password : password
   }
      this.http.post('http://localhost/blog/server/login.php',date).subscribe((res:any)=>{
      this.setDateUser(res)
   })
   }
  
  }
  auth(){
    return this.behaveuseer.value
  }
  login(){
    this.behaveuseer.next(true)
  }
  logout(){
    this.behaveuseer.next(false)
  }
}


