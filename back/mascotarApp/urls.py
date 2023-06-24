
from django.urls import path, include
from rest_framework import routers

from mascotarApp  import views
from .views import (LoginView, LogoutView, SignupView, ProductoViewSet, VerMetodoPagoView)

router= routers.DefaultRouter()
router.register(r'producto',views.ProductoViewSet)

urlpatterns = [
     
    path("auth/login/", LoginView.as_view(), name="auth_login"),
    path("auth/logout/", LogoutView.as_view(), name="auth_logout"),
    path("auth/signup/", SignupView.as_view(), name="auth_signup"),
     path(
        "pages/metodopago/",
        VerMetodoPagoView.as_view({"get": "list"}),
        name="pages_VerMetodopago",
    ),

    path('', include(router.urls)),
     
]