import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twister/Pages/homepage.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
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
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Enter',
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Exit',
            ),
          ),
        ],
      ),
    );
  }
}
