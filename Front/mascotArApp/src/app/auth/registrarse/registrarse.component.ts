import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { RegistroService } from 'src/app/Services/registro.service';

@Component({
  selector: 'app-registrarse',
  templateUrl: './registrarse.component.html',
  styleUrls: ['./registrarse.component.css']
})

export class RegistrarseComponent implements OnInit {
  registrarse: FormGroup = new FormGroup({});

  constructor(private formBuilder: FormBuilder, private registro: RegistroService) {
    this.registrarse = this.formBuilder.group({
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.pattern('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$')]],
      passcon: ['', [Validators.required,Validators.pattern('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$')]],
      dni: ['', [Validators.required, Validators.pattern('^[0-9]{8}$')]],
      direccion: ['', [Validators.required, Validators.pattern('^(?=.*\\d)(?=.*[a-zA-Z]).{3,}$')]],
      localidad: ['', [Validators.required, Validators.pattern('[a-zA-Z ]*')]],
      provincia: ['', [Validators.required, Validators.pattern('[a-zA-ZÁ-Úá-ú ]*')]],
    })
   }


  
  ngOnInit(): void {
   
    
  }

  
  submitForm(event:Event) {
    event.preventDefault();
    this.registro.signup(this.registrarse.value).subscribe({
      next: (response) => {
        if (response){
          alert("Registro aprobado!");
        } 
      },
      error: () => {
        alert("Credenciales incorrectas...")
      }
    })
    this.registrarse.markAllAsTouched()
}
}