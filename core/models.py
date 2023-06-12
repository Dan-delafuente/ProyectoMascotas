from django.db import models
from django.utils import timezone
import datetime
from django.contrib.auth.models import Group
from django.contrib.auth.models import Permission
from .cart import *

# Create your models here.

class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=25)

    def __str__(self):
        return self.descripcion

## A CLASE SE LE MODIFICO ELIMINANDOLE LOS CAMPOS INNESEARIOS COMO FECHA Y VIGENCIA
class Producto(models.Model):
    nombre = models.CharField(max_length=30)
    precio = models.IntegerField()
    stock = models.IntegerField()
    descripcion = models.CharField(max_length=250)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    imagen = models.ImageField(null=True,blank=True)

    def __str__(self):
        return self.nombre



class Cuenta(models.Model):
    nombre = models.CharField(max_length=40)
    contraseña = models.CharField(max_length=10)
    correo = models.CharField(max_length=80)
    fecha_creacion = models.DateField()

    def __str__(self):
        return self.nombre
    
    
class Carrito(models.Model):
    cuenta = models.ForeignKey(Cuenta, on_delete=models.CASCADE)
    productos = models.ManyToManyField(Producto, through='ItemCarrito')
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Carrito #{self.id}"


class ItemCarrito(models.Model):
    carrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.IntegerField()

    def __str__(self):
        return f"ItemCarrito #{self.id} - Carrito #{self.carrito_id}"
