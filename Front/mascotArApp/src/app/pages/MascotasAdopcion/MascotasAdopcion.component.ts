import { Component, OnInit } from '@angular/core';
import { MascotasService } from 'src/app/Services/mascotas.service';

@Component({
  selector: 'app-MascotasAdopcion',
  templateUrl: './MascotasAdopcion.component.html',
  styleUrls: ['./MascotasAdopcion.component.css']
})
export class MascotasAdopcionComponent implements OnInit {
  pets: any;

  constructor(private mascotas: MascotasService) 
  { 
    this.mascotas.ListaDeMascotas().subscribe({
      next:(listarMascotas) => {
      this.pets=listarMascotas
    
    },
    error: (errorData) => {
      console.error(errorData);
    }              
    
    });
  
    
  };
  ngOnInit() {
  }

}
