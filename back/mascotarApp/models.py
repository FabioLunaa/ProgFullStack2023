from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.

class CustomUser(AbstractUser):
    email = models.EmailField(max_length=150, unique=True)
    username = models.CharField(max_length=150, unique=False)
    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["username", "password"]

    def __unicode__(self):
        return self.username

    def __str__(self):
        return self.username
    
class Usuario(models.Model):
    dni = models.CharField(primary_key=True, max_length=45, blank=False)
    nombre = models.CharField(max_length=45, blank=False)
    contrasena = models.CharField(max_length=45, blank=False)
    telefono = models.CharField(max_length=45, blank=False)
    email = models.CharField(max_length=45, blank=False)
    direccion = models.CharField(max_length=45, blank=False)
    ciudad = models.CharField(max_length=45, blank=False)
    provincia = models.CharField(max_length=45, blank=False)

    class Meta:
        db_table = "Usuario"
        verbose_name = "Usuario"
        verbose_name_plural = "Usuarios"

    def __unicode__(self):
        return self.nombre

    def __str__(self):
        return self.nombre
    
class Producto(models.Model):
    nombre = models.CharField(max_length=100)
    precio = models.IntegerField()
    descripcion = models.TextField()
    linkImagen = models.URLField()
    class Meta:
        db_table = 'Producto'
        verbose_name = 'Productos'
        verbose_name_plural = 'Productos'

    
    def __str__(self):
        return self.nombre

class Metodopago(models.Model):
    id = models.AutoField(primary_key=True)
    monto = models.PositiveIntegerField()
    Usuario = models.ForeignKey("CustomUser", to_field="id", on_delete=models.CASCADE)

    class Meta:
        db_table = "Metodopago"
        verbose_name = "Metodopago"
        verbose_name_plural = "Metodopagos"

    def __unicode__(self):
        return self.id

    def __str__(self):
        return str(self.id)