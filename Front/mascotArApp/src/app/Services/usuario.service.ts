import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

export class Usuario
{

 private _nombre:string = "";
  private _apellido:string= "";
  private _password:string="";
  private _email:string="";
  private _id:number=0;
  token?: string;

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

  get password(): string {
    return this._password;
  }

  set password(value: string) {
    this._password = value;
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
  urls="http://localhost:8000/api/usuarios/";

  constructor(private http:HttpClient) {
    console.log("Servicio Usuarios está corriendo") }

  onCrearUsuario(usuario:Usuario):Observable<Usuario>{
    return this.http.post<Usuario>(this.urls, usuario);
  }


  onCrearUsuario2(usuario:any):Observable<any>{
    return this.http.post<any>(this.urls, usuario);
  }
}

