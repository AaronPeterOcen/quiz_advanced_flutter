import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onEnter,
  });

  final String answerText;
  final void Function() onEnter;

  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onEnter,
          style: ElevatedButton.styleFrom(
            // padding: EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),

            backgroundColor: const Color.fromARGB(255, 2, 63, 168),
            foregroundColor: const Color.fromARGB(255, 251, 247, 246),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(answerText),
        ),
      ],
    );
  }
}
      // height: 30,
