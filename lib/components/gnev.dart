import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.white,
      color: Colors.blueGrey[300],
      tabActiveBorder: Border.all(color: Colors.transparent, width: 9),
      tabs: const [
        // Home
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        // cart
        GButton(
          icon: Icons.shopping_bag,
          text: 'Cart',
        ),
      ],
    );
  }
}
