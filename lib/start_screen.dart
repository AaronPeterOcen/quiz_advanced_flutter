import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  // The constructor for the 'StartScreen' class.
  // and the 'this.quizStarter' indicates that 'quizStarter' is being initialized via the constructor.
  const StartScreen(this.quizStarter, {super.key});

  // 'quizStarter' is a final field that holds a callback function.
  // It is of type 'void Function()', meaning it is a function that takes no parameters and returns no value.
  // This field is initialized by the constructor and cannot be changed after the 'StartScreen' instance is created.
  final void Function() quizStarter;

  @override
  Widget build(context) {
    final logoImg = Image.asset(
      'assets/images/quiz-logo.png',
      width: 300,
      color: const Color.fromARGB(147, 94, 176, 238),
    );

    return Center(
      child: Column(
        //mainAxisSize is a property that determines how much space a widget
        // should occupy in the main axis direction
        mainAxisSize: MainAxisSize.min,
        children: [
          //adding image transparency
          // Opacity(opacity: 0.6, child: ),

          logoImg,
          //use sizedBox to add spacing between on screen items
          const SizedBox(
            height: 70,
          ),
          Text(
            "Learn Flutter the fun way",
            style: GoogleFonts.tiltWarp(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              // code to be executed when button pressed
              quizStarter();
            },
            // Callback function to be executed when the button is pressed
            style: OutlinedButton.styleFrom(
                // Style settings for the OutlinedButton
                foregroundColor: const Color.fromARGB(255, 163, 224, 255),
                backgroundColor: Colors.blueAccent),
            icon: const Icon(Icons.arrow_circle_right_rounded),
            // The icon displayed on the button
            label: const Text('Start quiz'),
          )
        ],
      ),
    );
  }
}
