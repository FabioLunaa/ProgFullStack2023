from django import forms
from .models import productos

class productosForm(forms.ModelForm):
    class Meta:
        model = productos
        fields = [
            'nombre',
            'precio',
            'descripcion',
            'linkImagen',
        ]