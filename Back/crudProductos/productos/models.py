from django.db import models

class productos(models.Model):
    codigo=models.AutoField(primary_key=True)
    nombre=models.CharField(max_length=30)
    precio=models.IntegerField(null=False)
    descripcion=models.CharField(max_length=60)
    linkImagen=models.CharField(max_length=100)
