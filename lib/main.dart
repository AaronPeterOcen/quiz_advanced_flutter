import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/start_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // child: const StartScreen(),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 46, 106, 1),
                Color.fromRGBO(87, 213, 225, 1),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              // radius: 0.80,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
