import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-MascotasAdopcion',
  templateUrl: './MascotasAdopcion.component.html',
  styleUrls: ['./MascotasAdopcion.component.css']
})
export class MascotasAdopcionComponent implements OnInit {

  pets: any[] = [];
  mascotaUrl: string | undefined;

  constructor(private http: HttpClient ) { }

  ListaDeMascotas(): Observable <any>{
    return this.http.get(this.mascotaUrl + "pets")
  }

  addMascotas(mascotas: any): void {
    this.pets.push(mascotas);
  }
  removeMascotas(mascotas: any): void {
    const index = this.pets.indexOf(mascotas);
    if (index > -1) {
      this.pets.splice(index, 1);

    }
  }
  getMascotas(): any[] {
    return this.pets;
  }
  clearMascotas(): void {
    this.pets = [];
  }

  ngOnInit() {
  }

}
