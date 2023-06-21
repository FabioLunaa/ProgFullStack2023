
from rest_framework import serializers
from .models import Producto

from django.contrib.auth.models import User

class ProductoSerializer(serializers.ModelSerializer):
 class Meta:
  model= Producto
  fields='__all__'
  #fields=('nombre')
  

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email')

class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'], validated_data['password'])
        return user