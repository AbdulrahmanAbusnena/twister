import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart'; 

class ListTile2 extends StatefulWidget {
  const ListTile2({super.key , required this.drinks});
final Drinks drinks; 
  @override
  State<ListTile2> createState() => _ListTile2State();
}

class _ListTile2State extends State<ListTile2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.brown[300],
        ),
        child:  ListTile( 
          title : Text(widget.drinks.name), 
          subtitle: Text(widget.drinks.price),
        ),
      ),
    );
  }
}
