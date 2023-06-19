import { Observable } from 'rxjs';
import { Component, OnInit } from '@angular/core'
import { FormBuilder,FormGroup,Validators} from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { AuthService } from 'src/app/Services/auth/auth.service';
import { Usuario } from 'src/app/Services/usuario.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  usuario: any;
  [x: string]: any;
  loginForm=this.formBuilder.group({
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required]],

  })
  form: any;

  constructor(private formBuilder:FormBuilder,private http: HttpClient,

    private authService: AuthService,
    private router: Router) {
    this.form= this.formBuilder.group(
      { 
        password:['',[Validators.required, Validators.minLength(8)]],
        email:['',[Validators.required, Validators.email]]
      }

    )
  }
  get Password()
  {
    return this.form.get("contraseña");
  }
  get Email()
  {
   return this.form.get("email");
  }
  get PasswordValid()
  {
    return this.Password?.touched && !this.Password?.valid;
  }
  get EmailValid()
  {
    return this.Email?.touched && !this.Email?.valid;
  }   

  ngOnInit(): void {
    this['returnUrl'] = this['route'].snapshot.queryParams.returnUrl || '/';
  }
  onEnviar(event: Event, usuario:Usuario): void {
    
    event.preventDefault();
    this.authService.login(this.usuario)
      .subscribe(
        data => {
        console.log("DATA"+ JSON.stringify( data));   
        this.router.navigate(['/home']);
      },
        error => {
         this['error'] = error;
        }
      );
      }
    



  login(){
    if(this.loginForm.valid){
      console.log("Llamar al servicio de login");
      this.router.navigateByUrl('/inicio');
      this.loginForm.reset();
    }
    else{
      this.loginForm.markAllAsTouched();
      alert("Error al ingresar los datos")
    }
  }
  registerUser(userData: any) {
    return this['http'].post('http://localhost:8000/api/auth/login/', userData);
  }
  
}