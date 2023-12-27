import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.blueGrey[300],
        tabActiveBorder: Border.all(color: Colors.grey, width: 2),
        tabs: const [
          // Home
          GButton(
            icon: Icons.home_filled,
            text: 'Home',
          ),
          // cart
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
