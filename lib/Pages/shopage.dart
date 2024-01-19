import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:twister/Pages/orderpage.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart';
import 'package:twister/components/listile.dart';

// what is the best keyboad to buy this two years I swear I can't
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //  list of the ListView
  getOrderPage(Drinks drink) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => OrderPage(drink: drink)));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.brown[400],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: Text(
            "Shop",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.white54,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  Drinks individualDrink = value.shop[index];
                  return Listile(
                    drink: individualDrink,
                    onTap: () => getOrderPage(individualDrink),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  Drinks individualDrink = value.shop[index];
                  return Listile(
                    drink: individualDrink,
                    onTap: () => getOrderPage(individualDrink),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  Drinks individualDrink = value.shop[index];
                  return Listile(
                    drink: individualDrink,
                    onTap: () => getOrderPage(individualDrink),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  Drinks individualDrink = value.shop[index];
                  return Listile(
                    drink: individualDrink,
                    onTap: () => getOrderPage(individualDrink),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
