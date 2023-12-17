import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EnDawdle',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: false,
      ),
      home: const Text(
        "EnDawdle",
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          decoration: TextDecoration.none
        ),
      ),
    );
  }
}
