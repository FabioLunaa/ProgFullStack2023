import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductosComponent } from './Productos.component';
import { VerProductosComponent } from './VerProductos/VerProductos.component';
import { CarritoComponent } from './Carrito/Carrito.component';
import { FinalizarCompraComponent } from './FinalizarCompra/FinalizarCompra.component';


@NgModule({
  imports: [
    CommonModule
  ],
  declarations: [ProductosComponent, VerProductosComponent, CarritoComponent, FinalizarCompraComponent]
})
export class ProductosModule { }

