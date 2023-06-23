import { Component } from '@angular/core';
import { CarritoService } from './Services/carrito.service';
import {MascotasService} from './Services/mascotas.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'MascotAr';
  carrito: any = {};
  
  constructor(private service: CarritoService, private mascotasService: MascotasService){

  }
  
  }
  
 

