from django.shortcuts import render, redirect
from .models import productos
from .forms import productosForm

def home(request):
    return render(request, 'index.html')

def crearProducto(request):
    if request.method == 'POST':
        form = productosForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('index')
    else:
        form = productosForm()
    return render(request, 'productos/crear_producto.html', {'form':form})
