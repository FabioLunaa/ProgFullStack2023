import { Component, OnInit } from '@angular/core';
import { FormBuilder,Validators} from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-registro.usuario',
  templateUrl: './registro.usuario.component.html',
  styleUrls: ['./registro.usuario.component.css']
})
export class RegistroUsuarioComponent implements OnInit {
  registroUForm=this.formBuilder.group({
    nombre: ['Nombre', [Validators.required]],
    telefono: ['Telefono', [Validators.required]],
    email: ['email@email.com', [Validators.required, Validators.email]],
    password: ['', [Validators.required]],
    provincia: ['provincia', [Validators.required]],
    departamento: ['departamento', [Validators.required]],

  })

  constructor(private formBuilder:FormBuilder, private router:Router) { }

  ngOnInit(): void {
   
  }
  registroU(){
    if(this.registroUForm.valid){
      console.log("Llamar al servicio de Registro");
      this.router.navigateByUrl('/inicio');
      this.registroUForm.reset();
    }
    else{
      this.registroUForm.markAllAsTouched();
      alert("Error al ingresar los datos")
    }
  }
 
}
