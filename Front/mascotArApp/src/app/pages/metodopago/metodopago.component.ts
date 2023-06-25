import { Component, OnInit } from '@angular/core';
import { MetodopagoService } from 'src/app/Services/metodopago.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-metodopago',
  templateUrl: './metodopago.component.html',
  styleUrls: ['./metodopago.component.css']
})
export class MetodopagoComponent implements OnInit {

  datos:any;
 constructor (private listPersonas: MetodopagoService, private router: Router){}

ngOnInit():void{
  this.verMetodopago();
}

verMetodopago():void{
  this.listPersonas.getMetodopago().subscribe({
    next:(response)=>(
      this.datos=response
      ),
    error: (errorResponse)=> (
      console.error(errorResponse)
    )
  })
 }

montoTotal():any{
  let storedData = localStorage.getItem('totalData');
  let total;
  if (storedData) {
    const data = JSON.parse(storedData);
    // Acceder a los valores
    total = data.total;
    // Hacer lo que necesites con los datos
    console.log(total);
  } 
  return total;
}

pagar(): any {
 
  alert("El pago ha sido exitoso");

  // Redireccionar al "home"
  this.router.navigate(['/home']);
}
}