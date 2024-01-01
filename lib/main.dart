import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:twister/Designs/themes.dart';
import 'package:twister/Pages/registration.dart';
import 'package:twister/modules/shop.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Twister',
        theme: ThemeData(),
        home: const RegistrationView(),
      ),
      create: (context) => CoffeShop(),
    );
  }
}
