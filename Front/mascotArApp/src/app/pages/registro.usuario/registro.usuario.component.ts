import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UsuarioService } from 'src/app/Services/usuario.service';
import { Usuario } from 'src/app/models/usuario.models';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-registro',
  templateUrl: './registro.usuario.component.html',
  styleUrls: ['./registro.usuario.component.css']
})
export class RegistroUsuarioComponent implements OnInit {
  form: FormGroup;
  usuario?: Usuario;
  contraseña2: any;
  constructor(private formBuilder: FormBuilder, private router: Router, private http: HttpClient, private usuarioService: UsuarioService) {
  this.form = this.formBuilder.group({
    nombre: ['', [Validators.required]],
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required]],
    provincia: ['provincia', [Validators.required]],
    departamento: ['departamento', [Validators.required]],
  })
}
  
  ngOnInit(): void {
  }

  onEnviar( usuario:Usuario): void {
   
    if (this.form.value){
      console.log("Enviando al servidor....");
      console.log(usuario);

      this.usuarioService.onCrearUsuario(usuario).subscribe({
        next: (response) => {
          console.log(response);
        
        }
        })
      
    }
    else
    {
      this.form.markAllAsTouched();
    }
  };

  get password()
  {
    return this.form.get("password");
  }
get contrseña2()
  {
    return this.form.get("contraseña2");
  }
get Email()
{
  return this.form.get("email");
}

get Nombre()
{
  return this.form.get("nombre")
}
get Apellido(){
  return this.form.get("apellido");
}

get EmailValid()
{
  return this.Email?.touched && !this.Email?.valid;
}

get NombreValid()
{
  return this.Nombre?.touched && !this.Nombre?.valid;
}

get ApellidoValid()
{
  return this.Apellido?.touched && !this.Apellido?.valid;
}

get PasswordValid()
{
  return this.password?.touched && !this.password?.valid;

}

get Contraseña2Valid()
{
  return this.contraseña2.touched && !this.contraseña2?.valid;
}

registroU() {
  if (this.form.valid) {
    console.log("Llamar al servicio de Registro");
    this.registerUser(this.form.value)
      .subscribe(
        response => {
          console.log(response);
          this.router.navigateByUrl('/inicio');
          this.form.reset();
        }
      );
  } else {
    this.form.markAllAsTouched();
    alert("Error al ingresar los datos");
  }
}

registerUser(userData: any) {
  return this.http.post('http://127.0.0.1:8000/api/registro/', userData);
}

}

