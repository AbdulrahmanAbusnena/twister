import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twister/Designs/themes.dart';
import 'package:twister/components/drawer.dart';
import 'package:twister/modules/drinks.dart';
import 'package:twister/modules/shop.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Drinks drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweatValue = 0.5;

  void customisedSweat(double newValue) {
    setState(() {
      sweatValue = newValue;
    });
  }

  double size = 0.5;

  void customSize(double newValue1) {
    setState(() {
      size = newValue1;
    });
  }

  void addToCart() {
    Provider.of<CoffeShop>(context, listen: false).addTocart(widget.drink);

    Navigator.pop(context);
    showDialog(
        context: context,
        builder: ((context) => const AlertDialog(
              title: Text('Succefully added to cart'),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        title: Text(widget.drink.name,
            style: GoogleFonts.montserrat(
              color: Colors.white54,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            )),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.drink.imagepath,
              height: 200,
              width: 300,
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('Sweetness',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            )),
                      ),
                      Expanded(
                          child: Slider(
                        value: sweatValue,
                        divisions: 4,
                        label: sweatValue.toString(),
                        onChanged: (value) => customisedSweat(value),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('Size',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            )),
                      ),
                      Expanded(
                        child: Slider(
                          value: size,
                          divisions: 4,
                          label: size.toString(),
                          onChanged: (value) => customSize(value),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            ElevatedButton(
              style: buttonTheme3,
              onPressed: addToCart,
              child: const Text('Add to cart'),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
