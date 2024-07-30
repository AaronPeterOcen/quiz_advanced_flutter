import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
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
