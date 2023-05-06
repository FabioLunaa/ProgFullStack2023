import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductosComponent } from './Productos.component';
import { VerProductosComponent } from './VerProductos/VerProductos.component';


@NgModule({
  imports: [
    CommonModule,
    VerProductosComponent
  ],
  declarations: [ProductosComponent,VerProductosComponent]
})
export class ProductosModule { }
