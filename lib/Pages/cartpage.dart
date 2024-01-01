import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Cart',
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: Colors.white54,
            )),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(child: Text('cart')),
    );
  }
}
