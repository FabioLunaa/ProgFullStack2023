from django.contrib import admin

# Register your models here.
from .models import MetodoPago, Mascota, Orejas,Sexo,Edad,Cola,Especie,Estado,Raza,Provincia,Departamento,Usuario,Mensaje,Orden,ValorEstadoOrden,EstadoOrden,DetalleOrden,Carrito,Inventario, TipoMovimiento,Producto,Compra,DetalleCompra,Proveedor                

admin.site.register(MetodoPago)
admin.site.register(Mascota)
admin.site.register(Orejas)
admin.site.register(Sexo)
admin.site.register(Edad)
admin.site.register(Cola)
admin.site.register(Especie)
admin.site.register(Estado)
admin.site.register(Raza)
admin.site.register(Provincia)
admin.site.register(Departamento)
admin.site.register(Usuario)
admin.site.register(Mensaje)
admin.site.register(Orden)
admin.site.register(ValorEstadoOrden)
admin.site.register(EstadoOrden)
admin.site.register(DetalleOrden)
admin.site.register(Carrito)
admin.site.register(Inventario)
admin.site.register(TipoMovimiento)
admin.site.register(Producto)
admin.site.register(Compra)
admin.site.register(DetalleCompra)
admin.site.register(Proveedor)
