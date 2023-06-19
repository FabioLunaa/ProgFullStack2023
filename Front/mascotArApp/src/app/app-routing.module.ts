import { NgModule, ViewChildren } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MascotasEncontradasComponent } from './pages/MascotasEncontradas/MascotasEncontradas.component';
import { MascotasPerdidasComponent } from './pages/MascotasPerdidas/MascotasPerdidas.component';
import { HomeComponent } from './pages/home/home.component';
import { RegistrarMascotaComponent } from './pages/RegistrarMascota/RegistrarMascota.component';
import { MascotasAdopcionComponent } from './pages/MascotasAdopcion/MascotasAdopcion.component';
import { VerProductosComponent } from './Productos/VerProductos/VerProductos.component';
import { CarritoComponent } from './Productos/Carrito/Carrito.component';
import { FinalizarCompraComponent } from './Productos/FinalizarCompra/FinalizarCompra.component';
import { LoginComponent } from './pages/login/login.component';
import { RegistroUsuarioComponent } from './pages/registro.usuario/registro.usuario.component';
import { ContactoComponent } from './pages/contacto/contacto.component';
import { CarritoService } from './Services/carrito.service';
import { AuthGuard } from './Services/auth/auth.guard';

const routes: Routes = [
  { path: 'iniciar-sesion', component: LoginComponent},
  { path: 'home', component: HomeComponent, canActivate: [AuthGuard]} ,
  { path: 'registrar-mascota', component: RegistrarMascotaComponent, canActivate: [AuthGuard]},
  { path: 'carrito', component: CarritoComponent, canActivate: [AuthGuard]},
  { path: 'finalizar-compra', component: FinalizarCompraComponent, canActivate: [AuthGuard]},
  { path: 'mascota-adopcion', component: MascotasAdopcionComponent},
  { path: 'mascotas-encontradas', component: MascotasEncontradasComponent },
  { path: 'mascotas-perdidas', component: MascotasPerdidasComponent },
  { path: 'ver-productos', component: VerProductosComponent},
  { path: 'registrarse', component: RegistroUsuarioComponent},
  { path: 'contacto', component: ContactoComponent},
  { path: 'dashboard', redirectTo: 'iniciar-sesion', pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

