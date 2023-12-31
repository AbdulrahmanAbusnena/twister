import 'package:flutter/material.dart';
import 'package:twister/Pages/cartpage.dart';
import 'package:twister/Pages/shopage.dart';
//import 'package:twister/Designs/themes.dart';
//import 'package:twister/Pages/homepage.dart';
import 'package:twister/components/gnev.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  final List<Widget> _pages = [
    // shop page
    const ShopPage(),
    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Colors.brown[400],

        bottomNavigationBar: NavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: _pages[_selectedIndex]);
  }
}
