import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  private isHamburgerClosed = new BehaviorSubject<boolean>(false);
  isHamburgerOpen = this.isHamburgerClosed.asObservable();

  constructor() { }

  changeHamburgerState(isOpen: boolean) {
    this.isHamburgerClosed.next(isOpen);
  }

}
