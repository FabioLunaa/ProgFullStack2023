import { Component, OnInit } from '@angular/core';
import { CarritoService } from 'src/app/Services/carrito.service';

@Component({
  selector: 'app-Productos',
  templateUrl: './Productos.component.html',
  styleUrls: ['./Productos.component.css']
})
export class ProductosComponent implements OnInit {
  items: any;

  constructor(private carrito:CarritoService) 
  { 
    this.carrito.ObtenerProductos().subscribe({
      next:(listaProducto) => {
      this.items=listaProducto
    
    },
    error: (errorData) => {
      console.error(errorData);
    }              
    
    });
  
    
  };
  ngOnInit() {
  }

}
