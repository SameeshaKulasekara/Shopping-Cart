import 'package:flutter/material.dart';
import 'package:food_shopping_cart/constant/image_url.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Burger", "4.00",foodImg1, Colors.pink],
    ["Pizza", "2.50",foodImg2, Colors.pink],
    ["Chicken", "12.80",foodImg3, Colors.pink],
    ["Sushi", "1.00",foodImg4, Colors.pink],
    ["Ramen", "1.00",foodImg5, Colors.pink],
    ["Chocolate Cake", "15.00", cakeImg1, Colors.pink],
    ["Vanilla Cake", "12.00", cakeImg2, Colors.pink],
    ["Strawberry Cake", "18.00", cakeImg3, Colors.pink],
    ["Cheesecake", "20.00", cakeImg4, Colors.pink],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
