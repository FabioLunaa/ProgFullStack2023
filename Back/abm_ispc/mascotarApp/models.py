from django.db import models
from django.contrib.auth.models import AbstractUser


class CustomUser(AbstractUser):
    email = models.EmailField(
        max_length=150, unique=True)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username', 'password']

class crudProducto(models.Model):
    nombre = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=8, decimal_places=2)
    descripcion = models.TextField()
    linkImagen = models.URLField()
    class Meta:
        db_table = 'producto'
        verbose_name = 'productos'
        verbose_name_plural = 'Productos'

    def __unicode__(self):
        return self.nombre
    def __str__(self):
        return self.nombre
