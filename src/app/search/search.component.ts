import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
  constructor(private roter:Router,private route:ActivatedRoute) {
    
  }
  searchText(val:string){
    // this.roter.navigate(['wite'])
    // setTimeout(() => {
      this.roter.navigate([`blogs/${val}`])
    // }, 1000);
  }
  ngOnInit(): void {
  }
}
