import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/data/question_data.dart';
import 'package:quiz_advanced_flutter/questions_screen.dart';
import 'package:quiz_advanced_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // activeScreen holds the current screen being displayed.
  // Widget? activeScreen;

  // @override
  // // Executed by Flutter when the StatefulWidget's State object is initialized
  // void initState() {
  //   // activeScreen = StartScreen(switchScreen);

  //   super.initState();
  // }
  var activeScreen = "first-screen";

  // The switchScreen method changes the value of activeScreen and
  //triggers a rebuild of the widget tree to show the new screen.

  void switchScreen() {
    // The setState call ensures that the UI updates to reflect the new state.
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = "quiz-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          selectedAnswers = [];
          activeScreen = 'first-screen';
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget initialScreen = StartScreen(switchScreen);

    if (activeScreen == 'quiz-screen') {
      initialScreen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

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
          // Using IF condition
          child: initialScreen,
          // Using a ternary operator
          // child: activeScreen == "first-screen"
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
