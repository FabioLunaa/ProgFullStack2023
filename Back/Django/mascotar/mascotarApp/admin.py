from django.contrib import admin
from .models import Producto, CustomUser
from django.contrib.auth import get_user_model
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser

class ProductoAdmin(admin.ModelAdmin):
    list_display = ("nombre", "precio", "descripcion", "linkImagen")

@admin.register(get_user_model())
class CustomUserAdmin(UserAdmin):
    pass

admin.site.register(Producto,ProductoAdmin)