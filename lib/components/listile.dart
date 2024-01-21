import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';
// import 'package:twister/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Listile extends StatelessWidget {
  final Drinks drink;
  void Function()? onTap;

  Listile({
    super.key,
    required this.drink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //  width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.brown[300],
        ),
        child: ListTile(
          title: Text(drink.name,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
          subtitle: Text(drink.price,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
          leading: Image.asset(drink.imagepath),
          trailing: const Icon(Icons.arrow_forward),    
        ),
      ),
    );
  }
}
