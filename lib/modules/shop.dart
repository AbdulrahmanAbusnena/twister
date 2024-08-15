import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';

class CoffeShop extends ChangeNotifier {
// list of drinks for sale
  final List<Drinks> _shop = [
    Drinks(
      name: 'Caffe latte',
      price: '2',
      imagepath: 'assets/cofe.png',
    ),
  ];
// list of dtinks in users cart
  final List<Drinks> _usercart = [];
  // get drinks for sale
  List<Drinks> get shop => _shop;
  // get user cart
  List<Drinks> get cart => _usercart;
  // add drink to cart
  void addTocart(Drinks drink) {
    _usercart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeDrinkfromCart(Drinks drink) {
    _usercart.remove(drink);
    notifyListeners();
  }
}

class MilkShake extends ChangeNotifier {
  final List<Drinks> _shop1 = [
    Drinks(
      name: 'MilkShake',
      price: '£2.50',
      imagepath: 'asset/cofe.png',
    ),
  ];
  final List<Drinks> _usercart1 = [];
  List<Drinks> get shop => _shop1;
  // get user cart
  List<Drinks> get cart => _usercart1;
  void addTocart(Drinks drink_2) {
    _usercart1.add(drink_2);
    notifyListeners();
  }

  // remove drink from cart
  void removeDrinkfromCart(Drinks drink) {
    _usercart1.remove(drink);
  }
}
