import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    //itemname, itemprice, imagePath, color
    ["Avacado", "40.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "210.50", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "150.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "120.00", "assets/images/water.png", Colors.blue],
  ];
  List _cartItems = [];

  get shopitems => _shopitems;
  get cartitems => _cartItems;

  // add items to cart

  void addItemToCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price

  String calculateTotal() {
    double totalPrice = 150;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
