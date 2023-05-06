import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductosComponent } from './Productos.component';
import { VerProductosComponent } from './VerProductos/VerProductos.component';
import { CarritoComponent } from './Carrito/Carrito.component';


@NgModule({
  imports: [
    CommonModule,
    VerProductosComponent,
    CarritoComponent
  ],
  declarations: [ProductosComponent,VerProductosComponent,CarritoComponent]
})
export class ProductosModule { }
