import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-regester',
  templateUrl: './regester.component.html',
  styleUrls: ['./regester.component.css']
})
export class RegesterComponent implements OnInit {
  stateForm:any=null
  qp=false;
  constructor(private ftm:FormBuilder,private http:HttpClient) { }
  checkform=this.ftm.group({
    username: new FormControl('',[Validators.required,Validators.maxLength(18),Validators.minLength(8)]),
    email: new FormControl('',[Validators.required,Validators.email]),
    password: ['',[Validators.required,Validators.minLength(3)]],
    repassword: ['',[Validators.required,Validators.minLength(3)]],
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
      username : this.name?.value,
      email : this.email?.value,
      password : this.password?.value,
      repasswoerd : this.repasswoerd?.value
   } 
   if (date.password != date.repasswoerd){
    this.stateForm='ps'
    }else{
    this.http.post('http://localhost/blog/server/adduser.php',date).subscribe((res)=>{
        this.stateForm=res
    })
}
  }
    get name(){return this.checkform.get('username')}
    get email(){return this.checkform.get('email')}
    get password(){return this.checkform.get('password')}
    get repasswoerd(){return this.checkform.get('repassword')}
}
