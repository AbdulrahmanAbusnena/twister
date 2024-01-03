import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart';

class Listile extends StatelessWidget {
  final Drinks drink;

  const Listile({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drink.name),
      subtitle: Text(drink.price),
      //   leading: ,
    );
  }
}
