import { Component, OnInit } from '@angular/core';
import { CarritoService } from 'src/app/Services/carrito.service';

@Component({
  selector: 'app-Carrito',
  templateUrl: './Carrito.component.html',
  styleUrls: ['./Carrito.component.css']
})
export class CarritoComponent implements OnInit {
  mostrarItems: boolean = true;
  items: any;

  constructor(private carrito: CarritoService) { }
  
  ngOnInit(): void {
    this.carrito.ObtenerProductos().subscribe(
      (data) => {
        this.items = data.items;
      },
      (error) => {
        console.error(error);
      }
    );
  }

}
