from django.db import models
from django.contrib.auth.models import User

class Persona(models.Model):
    apellido = models.CharField(max_length=50)
    nombre = models.CharField(max_length=50)
    dni = models.CharField(max_length=20)
    direccion = models.CharField(max_length=100)
    telefono = models.CharField(max_length=20)
    email = models.EmailField()
    SEXO_CHOICES = ( 
        ('M', 'Masculino'),
        ('F', 'Femenino'),
        ('O', 'Otro'),
    )
    sexo = models.CharField(max_length=1, choices=SEXO_CHOICES)


    def __str__(self):
        return f'ID_Persona: {self.id}'

class Cliente(models.Model):
    idCliente = models.AutoField(primary_key=True)
    email = models.EmailField()
    direccionFacturacion = models.CharField(max_length=255)
    celular = models.CharField(max_length=15)
 
    def __str__(self):
        return f"ID_CLIENTE: {self.idCliente} | EMAIL: {self.email} | DIRECCION DE FACTURACION: {self.direccionFacturacion} | CELULAR: {self.celular} "

class Administrador(models.Model):
    idAdministrador = models.IntegerField(primary_key=True)

class Compra(models.Model):
    idCompra = models.AutoField(primary_key=True)
    fecha = models.DateField()
    monto = models.DecimalField(max_digits=10, decimal_places=2)
    metPago = models.CharField(max_length=50)
    dirEnvio = models.CharField(max_length=200)
    idProveedor = models.ForeignKey('Proveedor', on_delete=models.CASCADE)

    class Meta:
        db_table = 'compras' 
    
    def __str__(self):
        return f"ID_COMPRA: {self.idCompra} |  IDPROVEEDOR: {self.idProveedor} "


class DetalleCompra(models.Model):
    idDetalleCompra = models.AutoField(primary_key=True)
    fecha = models.DateField()
    cantidad = models.IntegerField()
    estado = models.CharField(max_length=20)
    valor = models.DecimalField(max_digits=10, decimal_places=2)
    idCompra = models.ForeignKey('Compra', on_delete=models.CASCADE)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)

    def __str__(self):
        return f'ID_DETALLE_COMPRA: {self.idDetalleCompra}'
    

class Inventario(models.Model):
    idInventario = models.AutoField(primary_key=True)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)
    idDetalleDeCompra = models.ForeignKey('DetalleCompra', on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField()
    stock = models.PositiveIntegerField()

class Proveedor(models.Model):
    idProveedor = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    documento = models.CharField(max_length=20)
    direccion = models.CharField(max_length=200)
    email = models.EmailField()
    telefono = models.CharField(max_length=20)
    provincia = models.CharField(max_length=100)

    def __str__(self):
        return f"ID_PROVEEDOR: {self.idProveedor} | NOMBRE: {self.nombre}"


class Producto(models.Model):
    idProducto = models.AutoField(primary_key=True)
    valor = models.DecimalField(max_digits=10, decimal_places=2)
    nombreProducto = models.CharField(max_length=100)

    def __str__(self):
        return f"ID_PRODUCTO: {self.idProducto} | VALOR: {self.valor} | NOMBRE DEL PRODUCTO: {self.nombreProducto}"

class DetalleProducto(models.Model):
    idDetalleProducto = models.AutoField(primary_key=True)
    cantidad = models.PositiveIntegerField()
    valor = models.DecimalField(max_digits=10, decimal_places=2)
    costoEnvio = models.DecimalField(max_digits=10, decimal_places=2)
    valorTotal = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"ID_PRODUCTO: {self.idProducto} | VALOR: {self.valor} | NOMBRE DEL PRODUCTO: {self.nombreProducto}"

class InformacionEnvio(models.Model):
    idEnvio = models.AutoField(primary_key=True)
    cantidad = models.PositiveIntegerField()
    valor = models.DecimalField(max_digits=10, decimal_places=2)
    costoEnvio = models.DecimalField(max_digits=10, decimal_places=2)
    valor = models.DecimalField(max_digits=10, decimal_places=2)

class ComentarioProducto(models.Model):
    idComentario = models.AutoField(primary_key=True)
    texto = models.TextField()
    fecha = models.DateField()

    def __str__(self):
        return f"ID_comentario_producto: {self.idComentario} | Texto: {self.texto} | Fecha: {self.fecha}"