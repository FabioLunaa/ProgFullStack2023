import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CarritoService {
  carritoUrl:String ='http://localhost:3000/';
  items: any;

  constructor(private http: HttpClient) { }

  ObtenerProductos(): Observable <any>{
    return this.http.get(this.carritoUrl + "items")
  }
  
  
  addToCarrito({ item }: { item: any }): void {
    this.items.push(item);
  }

  removeFromCarrito(item: any): void {
    const index = this.items.indexOf(item);
    if (index > -1) {
      this.items.splice(index, 1);
    }
  }
getItems(): any[] {
  return this.items;
}
clearCarrito(): void {
  this.items = [];
}
}
