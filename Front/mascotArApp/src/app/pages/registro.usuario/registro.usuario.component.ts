import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-registro.usuario',
  templateUrl: './registro.usuario.component.html',
  styleUrls: ['./registro.usuario.component.css']
})
export class RegistroUsuarioComponent implements OnInit {
  registroUForm = this.formBuilder.group({
    nombre: ['', [Validators.required]],
    telefono: ['', [Validators.required]],
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required]],
    provincia: ['provincia', [Validators.required]],
    departamento: ['departamento', [Validators.required]],
  })
  

  constructor(private formBuilder: FormBuilder, private router: Router, private http: HttpClient) { }

  ngOnInit(): void {
  }

  registroU() {
    if (this.registroUForm.valid) {
      console.log("Llamar al servicio de Registro");
      this.registerUser(this.registroUForm.value)
        .subscribe(
          response => {
            console.log(response);
            this.router.navigateByUrl('/inicio');
            this.registroUForm.reset();
          },
          error => {
            console.log(error);
            alert("Error al registrar el usuario");
          }
        );
    } else {
      this.registroUForm.markAllAsTouched();
      alert("Error al ingresar los datos");
    }
  }

  registerUser(userData: any) {
    return this.http.post('https://localhost:8000/signup', userData);
  }
}
