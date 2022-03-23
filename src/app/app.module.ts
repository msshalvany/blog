import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { SearchComponent } from './search/search.component';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { RegesterComponent } from './regester/regester.component';
import { LoginuserComponent } from './loginuser/loginuser.component';
import { BlogsComponent } from './blogs/blogs.component';
import { BlogComponent } from './blog/blog.component';
import { AuthGuard } from './auth.guard';
import { AddblogComponent } from './addblog/addblog.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'home', component: HomeComponent },
  { path: 'home/:id', component: HomeComponent,canActivate :[AuthGuard] },
  { path: 'regester', component: RegesterComponent },
  { path: 'loginuser', component: LoginuserComponent },
  { path: 'blogs', component:  BlogsComponent},
  { path: 'blogs/:content', component:  BlogsComponent},
  { path: 'blog/:id', component:  BlogComponent},
  { path: 'addblog/:id', component:  AddblogComponent,canActivate :[AuthGuard]},
  { path: '**', redirectTo :''  },
]

@NgModule({
  declarations: [
    AppComponent,
    SearchComponent,
    RegesterComponent,
    LoginuserComponent,
    BlogsComponent,
    BlogComponent,
    HomeComponent,
    AddblogComponent,
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot(routes),
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
