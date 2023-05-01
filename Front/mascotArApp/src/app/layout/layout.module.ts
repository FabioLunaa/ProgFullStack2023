import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { CaruselComponent } from './carusel/carusel.component';



@NgModule({
  declarations: [
    HeaderComponent,
    FooterComponent,
    CaruselComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [HeaderComponent, FooterComponent, CaruselComponent]
})
export class LayoutModule { }
