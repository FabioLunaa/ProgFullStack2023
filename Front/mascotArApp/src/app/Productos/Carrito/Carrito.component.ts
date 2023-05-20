import { Component, OnInit } from '@angular/core';
import { CarritoService } from 'src/app/Services/carrito.service';

@Component({
  selector: 'app-Carrito',
  templateUrl: './Carrito.component.html',
  styleUrls: ['./Carrito.component.css']
})
export class CarritoComponent implements OnInit {
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
