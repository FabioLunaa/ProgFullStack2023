from django.urls import path, include
from .views import LoginView, LogoutView, SignupView, ProfileView, ListarUsuarios

urlpatterns = [
    # Auth views
    path('auth/login/',LoginView.as_view(), name='auth_login'),
    path('auth/logout/',LogoutView.as_view(), name='auth_logout'),
    path('auth/reset/',include('django_rest_passwordreset.urls',namespace='password_reset')),
    path('registro/',SignupView.as_view(), name='auth_signup'),
    path('user/profile/',ProfileView.as_view(), name='user_profile'),
    path('usuarios/',ListarUsuarios.as_view(), name='listar_usuarios'),
]