import { Component, OnInit } from '@angular/core';
import { DataService } from '../data.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {

  isOpen: boolean = false;

  constructor(private data: DataService) { }

  ngOnInit(): void {
    this.data.isHamburgerOpen.subscribe(hamburgerMenu => this.isOpen = hamburgerMenu);
  }

}
