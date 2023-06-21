from django.contrib import admin

# Register your models here.
from .models import Producto


class ProductoAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'descripcion', 'precio')
    
admin.site.register(Producto, ProductoAdmin)