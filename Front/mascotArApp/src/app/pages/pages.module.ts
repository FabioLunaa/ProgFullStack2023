import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegistroUsuarioComponent } from './registro.usuario/registro.usuario.component';




@NgModule({
  declarations: [
    HomeComponent,
    LoginComponent,
    RegistroUsuarioComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [HomeComponent, LoginComponent, RegistroUsuarioComponent]
})
export class PagesModule { }
