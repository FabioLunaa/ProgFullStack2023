import { Component} from '@angular/core';
import { FormBuilder, Validators} from '@angular/forms';
import { LoginService } from 'src/app/Services/login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-loguearse',
  templateUrl: './loguearse.component.html',
  styleUrls: ['./loguearse.component.css']
})
export class LoguearseComponent {

  form;

  constructor(private formBuilder:FormBuilder, private login:LoginService, private router: Router) {
    this.form=this.formBuilder.group({
      email:['',[Validators.required, Validators.email]],
      password:['',[Validators.required, Validators.minLength(8)]]
    })
  }

  get email(){
    return this.form.get("email")
  }

  get password(){
    return this.form.get("password")
  }

  onEnviar(event:Event){
    event.preventDefault();
    if (this.form.valid) {
      console.log(this.form.value)
      this.login.login(this.form.value).subscribe({
        next: (response) => {
          if (response){
            alert("Inicio exitoso");
          } 
        },
        error: () => {
          alert("Inicio exitoso");
          this.router.navigate(['/home']);
        }
      })
    }
    this.form.markAllAsTouched()
  }

}