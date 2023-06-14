import { Observable } from 'rxjs';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Usuario, UsuarioService } from 'src/app/Services/usuario.service';



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
  form: any;
  contraseña2: any;
  

  constructor(private formBuilder: FormBuilder, private router: Router, private http: HttpClient, private usuarioService: UsuarioService) { }
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }

  onEnviar(event: Event, usuario:Usuario): void {
    event.preventDefault();
    if (this.form.valid){
      console.log("Enviando al servidor....");
      console.log(usuario);

      this.usuarioService.crearUsuario(usuario).subscribe(
        (data: { id: number }) => {
          console.log(data.id);
            if(data.id>0)
            {
              alert("El registro ha sido creado satisfactoriamente. A continuación, por favor Inicie Serión.");
              this.router.navigate(['/iniciar-sesión'])
            }
        })
    }
    else
    {
      this.form.markAllAsTouched();
    }
  };

  get contraseña1()
  {
    return this.form.get("password1");
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

get Contraseña1Valid()
{
  return this.contraseña1.touched && !this.contraseña1?.valid;

}

get Contraseña2Valid()
{
  return this.contraseña2.touched && !this.contraseña2?.valid;
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
          }
        );
    } else {
      this.registroUForm.markAllAsTouched();
      alert("Error al ingresar los datos");
    }
  }

  registerUser(userData: any) {
    return this.http.post('http://127.0.0.1:8000/api/auth/registro/', userData);
  }
}
