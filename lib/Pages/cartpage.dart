import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:twister/components/drawer.dart';
import 'package:twister/components/listile_cart.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(builder: (context, value, child) {
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
              itemCount: value.shop.length,
              itemBuilder: (context, index) {
                Drinks individualDrink = value.shop[index];
                return const Padding(
                  padding: EdgeInsets.all(10),
                  //       child: Listile2(drink: individualDrink , ),
                );
              }),
        ),
        drawer: const MyDrawer(),
      );
    });
  }
}
