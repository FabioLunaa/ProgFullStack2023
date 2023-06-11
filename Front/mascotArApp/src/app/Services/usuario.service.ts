import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

export class Usuario
{

 private _nombre:string = "";
  private _apellido:string= "";
  private _contraseña:string="";
  private _email:string="";
  private _id:number=0;

  get nombre(): string {
    return this._nombre;
  }

  set nombre(value: string) {
    this._nombre = value;
  }

  get apellido(): string {
    return this._apellido;
  }

  set apellido(value: string) {
    this._apellido = value;
  }

  get contraseña(): string {
    return this._contraseña;
  }

  set contraseña(value: string) {
    this._contraseña = value;
  }
 
  get email(): string {
    return this._email;
  }

  set email(value: string) {
    this._email = value;
  }

  get id(): number {
    return this._id;
  }

  set id(value: number) {
    this._id = value;
  }



}

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {
  url="https://reqres.in/api/users/1"

  constructor(private http:HttpClient) { console.log("Servicio Usuarios está corriendo") }

  crearUsuario(usuario:Usuario):Observable<any>{
    return this.http.post<Usuario>(this.url, usuario);
  }
}


