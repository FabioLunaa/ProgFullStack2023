
from django.urls import path, include
from rest_framework import routers
#from Producto.views import ProductoViewSet
from mascotarApp  import views

from knox import views as knox_views
from .views import LoginAPI
from .views import RegisterAPI

router= routers.DefaultRouter()
router.register(r'producto',views.ProductoViewSet)
#----
urlpatterns = [
     
     path('registro', RegisterAPI.as_view(), name='register'),
     path('login', LoginAPI.as_view(), name='login'),
     path('logout', knox_views.LogoutView.as_view(), name='logout'),
     path('logoutall', knox_views.LogoutAllView.as_view(), name='logoutall'),
     
     path('', include(router.urls)),
]