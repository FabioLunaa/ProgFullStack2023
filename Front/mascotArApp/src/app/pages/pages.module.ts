import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegistroUsuarioComponent } from './registro.usuario/registro.usuario.component';
import { MascotasPerdidasComponent } from './MascotasPerdidas/MascotasPerdidas.component';
import { MascotasEncontradasComponent } from './MascotasEncontradas/MascotasEncontradas.component';
import { RegistrarMascotaComponent } from './RegistrarMascota/RegistrarMascota.component';
import { MascotasAdopcionComponent } from './MascotasAdopcion/MascotasAdopcion.component';
import { ContactoComponent } from './contacto/contacto.component';





@NgModule({
  declarations: [
    HomeComponent,
    LoginComponent,
    RegistroUsuarioComponent,
    MascotasPerdidasComponent,
    MascotasEncontradasComponent,
    RegistrarMascotaComponent,
    MascotasAdopcionComponent,
    ContactoComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [HomeComponent, LoginComponent, RegistroUsuarioComponent, MascotasPerdidasComponent,MascotasEncontradasComponent,RegistrarMascotaComponent,MascotasAdopcionComponent]
})
export class PagesModule { }
