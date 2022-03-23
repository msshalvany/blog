import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {
  islogin=false
  constructor(private auth:AuthService,private route:Router){
      this.auth.user.subscribe((date)=>{
        this.islogin=date
      })
  }
  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {    
      if (this.islogin) {
        return true
      } else {
        return this.route.navigate(['loginuser'])
      }
  }
  
}
