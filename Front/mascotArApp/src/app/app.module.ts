import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PagesModule } from './pages/pages.module';
import { ProductosModule } from './Productos/Productos.module';
import { RouterModule } from '@angular/router';
import { NavbarComponent } from './shared/navbar/navbar.component';
import { FooterComponent } from './shared/footer/footer.component';
import { Routes } from '@angular/router';
import { LoguearseComponent } from './auth/loguearse/loguearse.component';
import { HomeComponent } from './pages/home/home.component';
import { VerProductosComponent } from './Productos/VerProductos/VerProductos.component';
import { FinalizarCompraComponent } from './Productos/FinalizarCompra/FinalizarCompra.component';
import { ContactoComponent } from './pages/contacto/contacto.component';
import { AuthModule } from './auth/auth.module';
import { ReactiveFormsModule,FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatSidenavModule } from '@angular/material/sidenav';
import { RegistrarseComponent } from './auth/registrarse/registrarse.component';
import { MiCuentaComponent } from './auth/mi-cuenta/mi-cuenta.component';
import { MetodopagoComponent } from './pages/metodopago/metodopago.component';


const routes: Routes = [
  { path: 'iniciar-sesion', component: LoguearseComponent},
  { path: 'home', component: HomeComponent} ,
  { path: 'carrito', component: MetodopagoComponent},
  { path: 'finalizar-compra', component: FinalizarCompraComponent},
  { path: 'metodopago', component: MetodopagoComponent},
  { path: 'ver-productos', component: VerProductosComponent},
  { path: 'registrarse', component: RegistrarseComponent},
  { path: 'contacto', component: ContactoComponent},
  { path: 'dashboard', redirectTo: 'iniciar-sesion', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    FooterComponent,
    HomeComponent,
    LoguearseComponent,
    RegistrarseComponent,
    MiCuentaComponent,
    VerProductosComponent,
  ],
  imports: [
    BrowserModule,
    RouterModule,
    AppRoutingModule,
    PagesModule,
    ProductosModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule,
    BrowserAnimationsModule,
    MatSidenavModule,
    RouterModule.forRoot(routes),
  ],
  
  providers:  [],
  bootstrap: [AppComponent],
  
})
export class AppModule { }
