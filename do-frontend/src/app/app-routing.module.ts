import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HamburgerLinksComponent } from 'src/app/hamburger-links/hamburger-links.component';
import { HomeComponent } from 'src/app/home/home.component';
import { AboutAppComponent } from './about-app/about-app.component';
import { AboutUsComponent } from './about-us/about-us.component';
import { ContactComponent } from './contact/contact.component';

const routes: Routes = [
  { path: '', redirectTo: 'home-component', pathMatch: 'full' },
  { path: 'home-component', component: HomeComponent },
  { path: 'about-app-component', component: AboutAppComponent },
  { path: 'about-us-component', component: AboutUsComponent },
  { path: 'contact-component', component: ContactComponent },
  { path: 'hamburger-links-component', component: HamburgerLinksComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
