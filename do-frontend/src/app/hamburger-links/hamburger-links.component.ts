import { Component, OnInit } from '@angular/core';
import { DataService } from '../data.service';

@Component({
  selector: 'app-hamburger-links',
  templateUrl: './hamburger-links.component.html',
  styleUrls: ['./hamburger-links.component.scss']
})
export class HamburgerLinksComponent implements OnInit {
  
  constructor(private data: DataService) { }

  isOpen: boolean = false;

  ngOnInit(): void {
    this.data.isHamburgerOpen.subscribe(hamburgerMenu => this.isOpen = hamburgerMenu);
  }

  closeHamburger() {
    this.data.changeHamburgerState(false);
  }

}
