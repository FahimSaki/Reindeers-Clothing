import 'package:ecommerce_ui/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // prducts for sale
  final List<Product> _shop = [
    // test products list
    Product(
        name: 'Black Comfort Hoodie',
        price: 25.99,
        description: 'Daily Work Life',
        imagepath: "assets/images/hoodie1.jpg"),
    Product(
        name: 'Grey Urban',
        price: 35.99,
        description: 'Comfortable, Stylish and Elegant',
        imagepath: "assets/images/hoodie2.jpg"),
    Product(
        name: 'Street Ready',
        price: 40.00,
        description: 'Go out in Style',
        imagepath: "assets/images/hoodie3.jpg"),
    Product(
        name: 'Gravity Black',
        price: 9.99,
        description: 'Stay warm in the snow',
        imagepath: "assets/images/cap1.jpg"),
    Product(
        name: 'Prasine Green',
        price: 7.25,
        description: 'Cold hike between the trees',
        imagepath: "assets/images/cap2.jpg"),
  ];
  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add items to cart
  void addToCartt(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
