import { Component, OnInit } from '@angular/core';
import { ProductoService } from '../services/producto.service';
import * as fs from 'fs';

@Component({
  selector: 'app-VerProductos',
  templateUrl: './VerProductos.component.html',
  styleUrls: ['./VerProductos.component.css'],
})
export class VerProductosComponent implements OnInit {

  productos: any[] = []
  productosEnCarro: any[] = []
  loaded: boolean = false

  open: boolean = false

  constructor(
    private productoService: ProductoService
  ) { }

  ngOnInit() {
    this.productoService.getAllProducts().subscribe({
      next: (data) => this.productos = data,
      error: (e) => console.error(e),
      complete: () =>  {
        this.loaded = true
        console.log(this.productos)
      }
    })
  }

  addToCart(item: any) {
    this.productosEnCarro.push(item)
  }

  removeFromCart(index: number) {
    this.productosEnCarro.splice(index)
  }

  getTotal(): number {
    const total = this.productosEnCarro.reduce((accum, producto) => accum + parseFloat(producto.precio), 0);
    
    const data = {
      total: total,
      // Otras propiedades adicionales que desees guardar en el JSON
    };
  
    localStorage.setItem('totalData', JSON.stringify(data));
  
    return total;
  }
  
  toggleCart() {
      this.open = !this.open
  }

}
