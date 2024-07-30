import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          logoImg,
          //use sizedBox to add spacing between on screen items
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              color: Color.fromARGB(255, 198, 182, 182),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 163, 224, 255),
                backgroundColor: Colors.blueAccent),
            icon: const Icon(Icons.arrow_circle_right_rounded),
            label: const Text('Start quiz'),
          )
        ],
      ),
    );
  }
}
