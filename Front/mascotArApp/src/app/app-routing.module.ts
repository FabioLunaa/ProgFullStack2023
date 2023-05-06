import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { MascotasEncontradasComponent } from './pages/MascotasEncontradas/MascotasEncontradas.component';
import { MascotasPerdidasComponent } from './pages/MascotasPerdidas/MascotasPerdidas.component';
import { HomeComponent } from './pages/home/home.component';
import { RegistrarMascotaComponent } from './pages/RegistrarMascota/RegistrarMascota.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'mascotas-encontradas', component: MascotasEncontradasComponent },
  { path: 'mascotas-perdidas', component: MascotasPerdidasComponent },
  { path: 'registrar-mascota', component: RegistrarMascotaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

