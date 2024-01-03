import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.white54,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
        elevation: 0,
      ),
      body: Expanded(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(0),
                  child: Text('ListView Hahaha'),
                )),
      ),
    );
  }
}
