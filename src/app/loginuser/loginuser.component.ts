import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-loginuser',
  templateUrl: './loginuser.component.html',
  styleUrls: ['./loginuser.component.css']
})
export class LoginuserComponent implements OnInit {
  stateForm:any=null
  qp=false;
  constructor(private ftm:FormBuilder,private http:HttpClient,private route:Router,private auth:AuthService) { }
  checkform=this.ftm.group({
    username: new FormControl('',[Validators.required,Validators.maxLength(18),Validators.minLength(8)]),
    password: ['',[Validators.required,Validators.minLength(3)]],
  })
  ngOnInit(): void {
  }
  passcheck(e:any){
    if (e.target.value!==this.password?.value) {
      this.qp=true;
    }else{
      this.qp=false;
    }
  }

  onSubmit(){
    var date={
      username : this.username?.value,
      password : this.password?.value,
   } 
    this.http.post('http://localhost/blog/server/login.php',date).subscribe((res:any)=>{
        this.stateForm=res
        if (res=='noValid') {
          this.stateForm='noValid'
        }else if(res==0){
          this.stateForm=0
        }else{
          this.stateForm=1
          setTimeout(() => {
            this.auth.login()
            this.auth.setDateUser(res)
            this.route.navigate([''])
          }, 2000);
        }
    })
  }
    get username(){return this.checkform.get('username')}
    get password(){return this.checkform.get('password')}
}