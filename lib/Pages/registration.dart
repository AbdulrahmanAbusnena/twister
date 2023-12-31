import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twister/Designs/themes.dart';
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
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/abdul.png'),
        ),
        elevation: 0.0,
      ),
      body: Container(
        alignment: const Alignment(0, 0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: buttonTheme,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(
                'Enter',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: buttonTheme2,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Exit',
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
