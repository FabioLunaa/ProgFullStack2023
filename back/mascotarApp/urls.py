
from django.urls import path, include
from rest_framework import routers

from mascotarApp  import views
from .views import (LoginView, LogoutView, SignupView, ProductoViewSet)

router= routers.DefaultRouter()
router.register(r'producto',views.ProductoViewSet)

urlpatterns = [
     
    path("auth/login/", LoginView.as_view(), name="auth_login"),
    path("auth/logout/", LogoutView.as_view(), name="auth_logout"),
    path("auth/signup/", SignupView.as_view(), name="auth_signup"),
    

    path('', include(router.urls)),
     
]