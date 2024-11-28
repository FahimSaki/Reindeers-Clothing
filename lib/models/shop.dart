import 'package:ecommerce_ui/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // prducts for sale
  final List<Product> _shop = [
    // test products list
    Product(
      name: 'Test 1',
      price: 12.50,
      description: 'Item Description',
    ),
    Product(
      name: 'Test 2',
      price: 17.50,
      description: 'Item Description',
    ),
    Product(
      name: 'Test 3',
      price: 19.50,
      description: 'Item Description',
    ),
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
