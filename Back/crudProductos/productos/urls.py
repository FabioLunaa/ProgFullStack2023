from django.urls import path
from .views import *

urlpatterns = [
    path('$', home, name = "index"),
    path('crear_producto/', crearProducto, name = "crear_producto"),
]
