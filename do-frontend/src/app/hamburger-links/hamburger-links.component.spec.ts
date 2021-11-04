import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HamburgerLinksComponent } from './hamburger-links.component';

describe('HamburgerLinksComponent', () => {
  let component: HamburgerLinksComponent;
  let fixture: ComponentFixture<HamburgerLinksComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ HamburgerLinksComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(HamburgerLinksComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
