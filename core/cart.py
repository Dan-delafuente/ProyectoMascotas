from .models import *

class Cart:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        cart = self.session.get("cart")
        if not cart:
            cart = self.session["cart"] = {}
        self.cart = cart

    def add(self, producto):
        if str(producto.id) not in self.cart.keys():
            self.cart[str(producto.id)] = {
                "nombre": producto.nombre,
                "stock": 1,
                "precio": str(producto.precio),
                "imagen": producto.imagen.url if producto.imagen else None
            }
        else:
            for key, value in self.cart.items():
                if key == str(producto.id):
                    value["stock"] += 1
                    break
        self.save()

    def save(self):
        self.session["cart"] = self.cart
        self.session.modified = True

    def remove(self, producto_id):
        producto_id = str(producto_id)
        if producto_id in self.cart:
            del self.cart[producto_id]
            self.save()

    def decrement(self, producto):
        producto_id = str(producto.id)
        if producto_id in self.cart:
            self.cart[producto_id]["stock"] -= 1
            if self.cart[producto_id]["stock"] < 1:
                self.remove(producto_id)
            else:
                self.save()
        else:
            print("El producto no existe en el carrito")

    def clear(self):
        self.session["cart"] = {}
        self.session.modified = True
