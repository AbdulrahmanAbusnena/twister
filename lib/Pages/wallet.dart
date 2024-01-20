import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Wallet'),
        backgroundColor: Colors.brown,
        elevation: 0.0,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.brown,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.brown[300],
        ),
        child: Column(
          children: [
            const Icon(Icons.account_balance_wallet, color: Colors.blueGrey),
            Text("£245.99",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ),
      ),
    );
  }
}
