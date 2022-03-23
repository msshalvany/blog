import { Component } from '@angular/core';
import { AuthService } from './auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  login=false
  constructor(private auth:AuthService){
   setInterval(()=>{
     if (auth.auth()) {
       this.login=true
     }else{
       this.login=false
     }
   },100)
  }
}
