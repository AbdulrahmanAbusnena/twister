import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';

class CoffeShop extends ChangeNotifier {
// list of drinks for sale
  final List<Drinks> _shop = [
    Drinks(name: 'Caffe latte', price: '2', imagepath: 'assets/coffe3.jpg'),
  ];
// list of dtinks in users cart
  final List<Drinks> _usercart = [];
  // get drinks for sale
  List<Drinks> get shop => _shop;
  // get user cart
  List<Drinks> get cart => _usercart;
  // add drink to cart
  void addDrinktoCart(Drinks drink) {
    _usercart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeDrinkfromCart(Drinks drink) {
    _usercart.remove(drink);
    notifyListeners();
  }
}
