import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Usuario, UsuarioService } from 'src/app/Services/usuario.service';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-registro',
  templateUrl: './registro.usuario.component.html',
  styleUrls: ['./registro.usuario.component.css']
})
export class RegistroUsuarioComponent implements OnInit {
  form: FormGroup;
  usuario: Usuario = new Usuario();
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

  onEnviar(event: Event, usuario:Usuario): void {
    event.preventDefault();
    if (this.form.value){
      console.log("Enviando al servidor....");
      console.log(usuario);


      let user = {
        email:this.form.value.email,
        username: this.form.value.username,
        password: this.form.value.password
      }

      this.usuarioService.onCrearUsuario2(user).subscribe({
        next: (response) => {
          event.preventDefault();
          console.log(response);
        },
        error: (error) => {
          console.log(error);
        },
        complete: () => {
        }

      })


      // this.usuarioService.onCrearUsuario(usuario).subscribe(
      //   data =>{
      //     if(data.id>0)
      //       {
      //         alert("El registro ha sido creado satisfactoriamente. A continuación, por favor Inicie Sesión.");
      //         this.router.navigate(['/iniciar-sesion'])
      //       }
      //   }
      // )
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

