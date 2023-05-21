import { Component, OnInit } from '@angular/core';
import { MascotasService } from 'src/app/Services/mascotas.service';

@Component({
  selector: 'app-MascotasAdopcion',
  templateUrl: './MascotasAdopcion.component.html',
  styleUrls: ['./MascotasAdopcion.component.css']
})
export class MascotasAdopcionComponent implements OnInit {
  mostrarMascotas: boolean = true;
  pets: any;

  constructor(private mascotas: MascotasService) { }
  
  ngOnInit(): void {
    this.mascotas.ObtenerMascotas().subscribe(
      (data) => {
        this.pets = data.pets;
      },
      (error) => {
        console.error(error);
      }
    );
  }
}
