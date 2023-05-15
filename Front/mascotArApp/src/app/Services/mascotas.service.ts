import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class MascotasService {
  pets: any[] = [];

  constructor(private http: HttpClient ) { }

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
}