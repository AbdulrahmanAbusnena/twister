import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  // brightness: Brightness.dark,
  // colorScheme: ColorScheme(),
  useMaterial3: true,
);
// registration view buttons Style
final buttonTheme = ElevatedButton.styleFrom(
  minimumSize: const Size(250, 40),
  elevation: 0.0,
  backgroundColor: const Color.fromARGB(255, 222, 214, 214),
  foregroundColor: Colors.blueGrey,
);

final buttonTheme2 = TextButton.styleFrom(
  minimumSize: const Size(250, 40),
  elevation: 0.0,
  foregroundColor: Colors.grey,
);
