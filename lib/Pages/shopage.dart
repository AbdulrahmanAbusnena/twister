import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Colors.white54,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
