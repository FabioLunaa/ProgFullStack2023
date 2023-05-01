import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
<<<<<<< HEAD
import { RegistroUsuarioComponent } from './registro.usuario/registro.usuario.component';
import { LoginComponent } from './login/login.component';
=======
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { NavbarComponent } from '../layout/navbar/navbar.component';
>>>>>>> 845a5c93af0658ca0c7c0d53c27f6c5c94375207



@NgModule({
  declarations: [
<<<<<<< HEAD
    RegistroUsuarioComponent,
=======
    HomeComponent,
>>>>>>> 845a5c93af0658ca0c7c0d53c27f6c5c94375207
    LoginComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [HomeComponent, LoginComponent]
})
export class PagesModule { }
