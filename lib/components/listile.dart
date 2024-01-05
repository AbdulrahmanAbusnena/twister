import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';

class Listile extends StatelessWidget {
  final Drinks drink;

  const Listile({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.brown[300],
      ),
      child: ListTile(
        title: Text(drink.name,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            )),
        subtitle: Text(drink.price,
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            )),
        leading: Image.asset(drink.imagepath),
      ),
    );
  }
}
