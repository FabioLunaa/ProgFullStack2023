import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class MetodopagoService {
  constructor(private http: HttpClient) {}

  getMetodopago(): Observable<any> {
    return this.http.get('http://localhost:3000/');
  }

  }