import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegistroUsuarioComponent } from './registro.usuario/registro.usuario.component';
import { MascotasPerdidasComponent } from './MascotasPerdidas/MascotasPerdidas.component';
import { DashboardComponent } from './dashboard/dashboard.component';





@NgModule({
  declarations: [
    HomeComponent,
    LoginComponent,
    RegistroUsuarioComponent,
    MascotasPerdidasComponent,
    DashboardComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [HomeComponent, LoginComponent, RegistroUsuarioComponent,MascotasPerdidasComponent]
})
export class PagesModule { }
