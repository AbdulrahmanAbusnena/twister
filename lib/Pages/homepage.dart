import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  final List _page = [
    // shop page
    const ShopPage(),
    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text(
          'Twister',
          style: GoogleFonts.montserrat(
            color: Colors.white54,
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/abdul.png'),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
        elevation: 0.0,
      ),
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
