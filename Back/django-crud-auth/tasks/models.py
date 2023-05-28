from django.db import models

# Create your models here.

class MetodoPago(models.Model):
    id = models.AutoField(primary_key=True)
    MetodosDePago = models.CharField(max_length=100)

    def __str__(self):
        return self.MetodosDePago

class Mascota(models.Model):
    id = models.AutoField(primary_key=True)
    idUsuario = models.ForeignKey('Usuario', on_delete=models.CASCADE)
    idEstado = models.ForeignKey('Estado', on_delete=models.CASCADE)
    idProvincia = models.ForeignKey('Provincia', on_delete=models.CASCADE)
    idDepartamento = models.ForeignKey('Departamento', on_delete=models.CASCADE)
    idEspecie = models.ForeignKey('Especie', on_delete=models.CASCADE)
    idRaza = models.ForeignKey('Raza', on_delete=models.CASCADE)
    idSexo = models.ForeignKey('Sexo', on_delete=models.CASCADE)
    idEdad = models.ForeignKey('Edad', on_delete=models.CASCADE)
    idOrejas = models.ForeignKey('Orejas', on_delete=models.CASCADE)
    idCola = models.ForeignKey('Cola', on_delete=models.CASCADE)
    linkImagen = models.URLField()
    descripcion = models.TextField()

    def __str__(self):
        return self.descripcion

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Usuario': self.idUsuario,
            'ID Estado': self.idEstado,
            'ID Provincia': self.idProvincia,
            'ID Departamento': self.idDepartamento,
            'ID Especie': self.idEspecie,
            'ID Raza': self.idRaza,
            'ID Sexo': self.idSexo,
            'ID Edad': self.idEdad,
            'ID Orejas': self.idOrejas,
            'ID Cola': self.idCola,
            'Link de Imagen': self.linkImagen,
            'Descripción': self.descripcion
        }
        return datos

class Orejas(models.Model):
    id = models.AutoField(primary_key=True)
    orejas = models.CharField(max_length=100)

    def __str__(self):
        return self.orejas

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Orejas': self.orejas
        }
        return datos

class Sexo(models.Model):
    id = models.AutoField(primary_key=True)
    sexo = models.CharField(max_length=100)

    def __str__(self):
        return self.sexo

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Sexo': self.sexo,
        }
        return datos

class Edad(models.Model):
    id = models.AutoField(primary_key=True)
    edad = models.PositiveIntegerField()

    def __str__(self):
        return str(self.edad)

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Edad': self.edad
        }
        return datos

class Cola(models.Model):
    id = models.AutoField(primary_key=True)
    cola = models.CharField(max_length=100)

    def __str__(self):
        return self.cola

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Cola': self.cola
        }
        return datos

class Especie(models.Model):
    id = models.AutoField(primary_key=True)
    especie = models.CharField(max_length=100)

    def __str__(self):
        return self.especie

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Especie': self.especie
        }
        return datos

class Estado(models.Model):
    id = models.AutoField(primary_key=True)
    estado = models.CharField(max_length=100)

    def __str__(self):
        return self.estado

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Estado': self.estado
        }
        return datos

class Raza(models.Model):
    id = models.AutoField(primary_key=True)
    raza = models.CharField(max_length=100)

    def __str__(self):
        return self.raza

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Raza': self.raza
        }
        return datos

class Provincia(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Nombre': self.nombre,
        }
        return datos

class Departamento(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Nombre': self.nombre,
        }
        return datos

class Usuario(models.Model):
    id = models.AutoField(primary_key=True)
    usuario = models.CharField(max_length=50, unique=True)
    contraseña = models.CharField(max_length=50)
    nombre = models.CharField(max_length=50)
    apellido = models.CharField(max_length=50)
    email = models.EmailField(unique=True)
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=100)
    idProvincia = models.ForeignKey('Provincia', on_delete=models.CASCADE)
    idDepartamento = models.ForeignKey('Departamento', on_delete=models.CASCADE)

    def __str__(self):
        return self.usuario

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Usuario': self.usuario,
            'Contraseña': self.contraseña,
            'Nombre': self.nombre,
            'Apellido': self.apellido,
            'Email': self.email,
            'Teléfono': self.telefono,
            'Dirección': self.direccion,
            'ID Provincia': self.idProvincia,
            'ID Departamento': self.idDepartamento,
        }
        return datos

class Mensaje(models.Model):
    id = models.AutoField(primary_key=True)
    asunto = models.CharField(max_length=100)
    texto = models.TextField()
    idUsuario = models.ForeignKey('Usuario', on_delete=models.CASCADE)

    def __str__(self):
        return self.asunto

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Asunto': self.asunto,
            'Texto': self.texto,
            'ID Usuario': self.idUsuario
        }
        return datos

class Orden(models.Model):
    id = models.AutoField(primary_key=True)
    idUsuario = models.ForeignKey('Usuario', on_delete=models.CASCADE)
    idEstado = models.ForeignKey('Estado', on_delete=models.CASCADE)
    idMetodoPago = models.ForeignKey('MetodoPago', on_delete=models.CASCADE)
    idProvincia = models.ForeignKey('Provincia', on_delete=models.CASCADE)
    idDepartamento = models.ForeignKey('Departamento', on_delete=models.CASCADE)
    direccionEnvio = models.CharField(max_length=200)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    fecha = models.DateField()

    def __str__(self):
        return f"Orden #{self.id}"

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Usuario': self.idUsuario,
            'ID Estado': self.idEstado,
            'ID Método de Pago': self.idMetodoPago,
            'ID Provincia': self.idProvincia,
            'ID Departamento': self.idDepartamento,
            'Dirección de Envío': self.direccionEnvio,
            'Total': self.total,
            'Fecha': self.fecha
        }
        return datos

class ValorEstadoOrden(models.Model):
    id = models.AutoField(primary_key=True)
    estado = models.CharField(max_length=100)

    def __str__(self):
        return self.estado

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Estado': self.estado,
        }
        return datos

class EstadoOrden(models.Model):
    id = models.AutoField(primary_key=True)
    idEstado = models.ForeignKey('Estado', on_delete=models.CASCADE)
    fecha = models.DateField()

    def __str__(self):
        return str(self.id)

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Estado': self.idEstado,
            'Fecha': self.fecha
        }
        return datos

class DetalleOrden(models.Model):
    id = models.AutoField(primary_key=True)
    idOrden = models.ForeignKey('Orden', on_delete=models.CASCADE)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)
    idEstado = models.ForeignKey('Estado', on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField()
    precio = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"Detalle de Orden #{self.id}"

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Orden': self.idOrden,
            'ID Producto': self.idProducto,
            'ID Estado': self.idEstado,
            'Cantidad': self.cantidad,
            'Precio': self.precio
        }
        return datos

class Carrito(models.Model):
    id = models.AutoField(primary_key=True)
    idUsuario = models.ForeignKey('Usuario', on_delete=models.CASCADE)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField()

    def __str__(self):
        return f"Carrito {self.id}"

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Usuario': self.idUsuario,
            'ID Producto': self.idProducto,
            'Cantidad': self.cantidad
        }
        return datos

class Inventario(models.Model):
    id = models.AutoField(primary_key=True)
    idDetalleOrden = models.ForeignKey('DetalleOrden', on_delete=models.CASCADE)
    idDetalleCompra = models.ForeignKey('DetalleCompra', on_delete=models.CASCADE)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)
    
    concepto = models.CharField(max_length=100)
    cantidad = models.PositiveIntegerField()
    stock = models.PositiveIntegerField()

    def __str__(self):
        return self.concepto

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Detalle Orden': self.idDetalleOrden,
            'ID Detalle Compra': self.idDetalleCompra,
            'ID Producto': self.idProducto,
            'ID Tipo': self.idTipo,
            'Concepto': self.concepto,
            'Cantidad': self.cantidad,
            'Stock': self.stock
        }
        return datos

class TipoMovimiento(models.Model):
    id = models.AutoField(primary_key=True)
    movimiento = models.CharField(max_length=100)

    def __str__(self):
        return self.movimiento

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Movimiento': self.movimiento,
        }
        return datos

class Producto(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=8, decimal_places=2)
    descripcion = models.TextField()
    imagen = models.URLField()

    def __str__(self):
        return self.nombre

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Nombre': self.nombre,
            'Precio': self.precio,
            'Descripción': self.descripcion,
            'Imagen': self.imagen
        }
        return datos

class Compra(models.Model):
    id = models.AutoField(primary_key=True)
    idProveedor = models.ForeignKey('Proveedor', on_delete=models.CASCADE)
    fecha = models.DateField()
    monto = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"Compra {self.id}"

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Proveedor': self.idProveedor,
            'Fecha': self.fecha,
            'Monto': self.monto
        }
        return datos

class DetalleCompra(models.Model):
    id = models.AutoField(primary_key=True)
    idCompra = models.ForeignKey('Compra', on_delete=models.CASCADE)
    idProducto = models.ForeignKey('Producto', on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField()
    precio = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"DetalleCompra {self.id}"

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'ID Compra': self.idCompra,
            'ID Producto': self.idProducto,
            'Cantidad': self.cantidad,
            'Precio': self.precio
        }
        return datos

class Proveedor(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    email = models.EmailField()
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=200)

    def __str__(self):
        return self.nombre

    def mostrar_datos(self):
        datos = {
            'ID': self.id,
            'Nombre': self.nombre,
            'Email': self.email,
            'Teléfono': self.telefono,
            'Dirección': self.direccion
        }
        return datos
