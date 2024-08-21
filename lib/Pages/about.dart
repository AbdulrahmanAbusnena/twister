import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('About - Twister'),
          centerTitle: true,
          leading: IconButton.filled(
              onPressed: () {}, icon: const Icon(Icons.arrow_back))),
    );
  }
}
   
