import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:twister/Designs/themes.dart';
//import 'package:twister/Pages/homepage.dart';
import 'package:twister/components/gnev.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        title: Text(
          'Twister',
          style: GoogleFonts.montserrat(
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/abdul.png'),
        ),
        actions: [
          IconButton.filled(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        elevation: 0.0,
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
