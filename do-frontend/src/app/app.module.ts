import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

// MATERIAL RELATED
import { MatCheckboxModule } from '@angular/material/checkbox';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDividerModule } from '@angular/material/divider';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { LayoutModule } from '@angular/cdk/layout';
import { MatGridListModule } from '@angular/material/grid-list';
import { NavbarComponent } from './navbar/navbar.component';
import { AboutAppComponent } from './about-app/about-app.component';
import { AboutUsComponent } from './about-us/about-us.component';
import { ContactComponent } from './contact/contact.component';
import { HomeComponent } from './home/home.component';
import { HamburgerLinksComponent } from './hamburger-links/hamburger-links.component';


@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    AboutAppComponent,
    AboutUsComponent,
    ContactComponent,
    HomeComponent,
    HamburgerLinksComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MatCheckboxModule,
    BrowserAnimationsModule,
    MatDividerModule,
    MatProgressBarModule,
    MatCardModule,
    MatButtonModule,
    MatIconModule,
    LayoutModule,
    MatGridListModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
