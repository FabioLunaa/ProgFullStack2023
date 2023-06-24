import { Component, OnInit } from '@angular/core';
import { ProductoService } from '../services/producto.service';


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
    for (const producto of this.productosEnCarro) {
      const precioNumerico = parseFloat(producto.precio);
      console.log(typeof precioNumerico);
    }
    return this.productosEnCarro.reduce((total, producto) => total + parseFloat(producto.precio), 0);
  }
  
  toggleCart() {
      this.open = !this.open
  }

}
