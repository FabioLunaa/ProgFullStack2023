import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CarritoService {
  carritoUrl: string = '/assets/data/carrito.json';

  constructor(private http: HttpClient) { }

  ObtenerProductos(): Observable<any> {
    return this.http.get(this.carritoUrl);
  }
}
