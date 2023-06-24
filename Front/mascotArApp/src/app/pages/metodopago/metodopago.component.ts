import { Component, OnInit } from '@angular/core';
import { MetodopagoService } from 'src/app/Services/metodopago.service';

@Component({
  selector: 'app-metodopago',
  templateUrl: './metodopago.component.html',
  styleUrls: ['./metodopago.component.css']
})
export class MetodopagoComponent implements OnInit {

  datos:any;
 constructor (private listPersonas: MetodopagoService){}

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
}
const storedData = localStorage.getItem('totalData');
if (storedData) {
  const data = JSON.parse(storedData);
  // Acceder a los valores
  const total = data.total;
  // Hacer lo que necesites con los datos
  console.log('Total:', total);
}