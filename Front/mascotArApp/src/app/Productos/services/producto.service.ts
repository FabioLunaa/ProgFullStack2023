import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductoService {

  urlProducto: string = 'http://127.0.0.1:8000/api/v1producto'
  // caso pruebas locales cambiar por http://127.0.0.1:8000/api/v1producto/

  urlProducto2: string = 'http://127.0.0.1:8000/api/v1producto'

  constructor(
    private http: HttpClient
  ) { }

  getAllProducts() : Observable<any> {
    return this.http.get(this.urlProducto)
  }
}
