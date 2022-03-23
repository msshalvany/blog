import { Variable } from '@angular/compiler/src/render3/r3_ast';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/auth.service';

@Component({
  selector: 'app-addblog',
  templateUrl: './addblog.component.html',
  styleUrls: ['./addblog.component.css']
})
export class AddblogComponent implements OnInit {
  stateform:any=null
    constructor(private user:AuthService,private route:ActivatedRoute,private router:Router,private form:FormBuilder,private http:HttpClient) {}
     blogform=this.form.group({
         head:['',Validators.required],
         text:['',Validators.required]
     })
    onSubmit(){
      var routeParams = this.route.snapshot.paramMap;
      var id = routeParams.get('id');
        var date={
            head : this.head?.value,
            text : this.text?.value,
            userid:id
        }
        this.http.post('http://localhost/blog/server/addblog.php',date).subscribe((res)=>{
            if (res) {
              this.stateform=1
              setTimeout(() => {
                this.router.navigate(['home'])
              }, 3000);
            }else{
              this.stateform=0
            }
        })
    }
    get head(){return this.blogform.get('head')}
    get text(){return this.blogform.get('text')}
    ngOnInit() { }
}
