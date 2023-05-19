from django.shortcuts import render

from productos.models import Producto

def mostrarIndex(request):
    return render(request, 'index.html')


def mostrarListado(request):
    pro = Producto.objects.all().values()
    datos = { 'pro' : pro }
    return render(request, 'listado.html', datos)


def mostrarFormRegistrar(request):
    return render(request, 'form_registrar.html')


def mostrarFormActualizar(request, codigo):
    try:
        pro = Producto.objects.get(codigo = codigo)
        datos = { 'pro' : pro }
        return render(request, 'form_actualizar.html', datos)
    except:
        pro = Producto.objects.all().values()
        datos = { 
            'pro' : pro, 
            'r2' : 'El ID ('+str(codigo)+') No Existe. Imposible Actualizar!!' 
        }
        return render(request, 'listado.html', datos)


def insertarProducto(request):
    if request.method == 'POST':
        nom = request.POST['txtnom']
        pre = request.POST['txtpre']
        descr = request.POST['txtdescr']
        link = request.POST['txtlink']
        pro = Producto(nombre=nom, precio=pre, descripcion=descr, linkImagen=link)
        pro.save()
        datos = { 'r' : 'Registro Realizado Correctamente!!' }
        return render(request, 'form_registrar.html', datos)
    else:
        datos = { 'r2' : 'No Se Puede Procesar Solicitud!!' }
        return render(request, 'form_registrar.html', datos)



def actualizarProducto(request, codigo):
    if request.method == 'POST':
        nom = request.POST['txtnom']
        pre = request.POST['txtpre']
        descr = request.POST['txtdescr']
        link = request.POST['txtlink']
        pro = Producto.objects.get(codigo = codigo)
        pro.nombre = nom
        pro.precio = pre
        pro.descripcion = descr
        pro.linkImagen = link 

        pro.save()
        pro = Producto.objects.all().values()
        datos = { 
            'pro' : pro,
            'r' : 'Datos Modificados Correctamente!!' 
        }
        return render(request, 'listado.html', datos)
    else:
        datos = { 'r2' : 'No Se Puede Procesar Solicitud!!' }
        return render(request, 'listado.html', datos)


def eliminarProducto(request, codigo):
    try:
        pro = Producto.objects.get(codigo = codigo)
        pro.delete()
        pro = Producto.objects.all().values()
        datos = {
            'pro' : pro,
            'r' : 'Registro Eliminado Correctamente'
        }
        return render(request, 'listado.html', datos)
    except:
        pro = Producto.objects.all().values()
        datos = {
            'pro' : pro,
            'r2' : 'El ID ('+str(codigo)+') No Existe. Imposible Eliminar!!'
        }
        return render(request, 'listado.html', datos)