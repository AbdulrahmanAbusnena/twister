// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:twister/modules/drinks.dart';
import 'package:google_fonts/google_fonts.dart';

class Listile2 extends StatelessWidget {
   
    final Drinks drink; 
  void Function()? onTap;

  Listile2({
    super.key,
    required this.drink,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(8), 
        color: Colors.brown[300]
      ),
      child: ListTile( 
      title: Text(drink.name, style: GoogleFonts.montserrat(
        fontSize: 14, 
        fontWeight: FontWeight.w700,
      ),),
      subtitle: Text(drink.price, style: GoogleFonts.montserrat(
        fontSize: 14, 
        fontWeight: FontWeight.w700,
      ),) ,
      leading: Image.asset(drink.imagepath),   
      trailing: const Icon(Icons.delete, color: Colors.red , ) ,                                                                                                                     
      )
    )


   ); 
  }
}