from django.contrib import admin

# Register your models here.

from myapp.models import Persona, Cliente, Administrador, Compra, DetalleCompra, Inventario, Proveedor, Producto, DetalleProducto, InformacionEnvio, ComentarioProducto  

admin.site.register(Persona)
admin.site.register(Cliente)
admin.site.register(Administrador)
admin.site.register(Compra)
admin.site.register(DetalleCompra)
admin.site.register(Inventario)
admin.site.register(Proveedor)
admin.site.register(Producto)
admin.site.register(DetalleProducto)
admin.site.register(InformacionEnvio)
admin.site.register(ComentarioProducto)