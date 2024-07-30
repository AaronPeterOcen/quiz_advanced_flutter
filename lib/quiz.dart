import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_advanced_flutter/questions_screen.dart';
import 'package:quiz_advanced_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // activeScreen holds the current screen being displayed.
  Widget activeScreen = const StartScreen();

  // The switchScreen method changes the value of activeScreen and
  //triggers a rebuild of the widget tree to show the new screen.
  void switchScreen() {
    // The setState call ensures that the UI updates to reflect the new state.
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}
