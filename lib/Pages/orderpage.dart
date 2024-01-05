import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twister/modules/drinks.dart';

class OrderPage extends StatelessWidget {
  final Drinks drink;

  const OrderPage({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        title: Text(
          drink.name,
          style: GoogleFonts.montserrat(
            color: Colors.white54,
            fontSize: 14,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
      ),
      body: Container(),
    );
  }
}
