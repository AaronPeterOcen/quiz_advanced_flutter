import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_advanced_flutter/answer_button.dart';
import 'package:quiz_advanced_flutter/data/question_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  // Index of the current question being displayed
  void answerQuestion(String selectedAnswer) {
    // Call the onSelectAnswer method from the parent widget with the selected answer
    widget.onSelectAnswer(selectedAnswer);

    // Update the state to increment the current question index
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    // final questionAnswer = questions[1];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.tiltWarp(
                  color: const Color.fromARGB(255, 143, 183, 251),
                  // fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Iterate over each 'answer' in 'currentQuestion.answers'.
            // 'map' creates a new list by applying the function to each item in the original list.
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // For each 'answer', create an 'AnswerButton' widget.
              // 'answerText' is set to the current 'answer'.
              // 'onEnter' is set to an empty function (placeholder for actual logic).
              return AnswerButton(
                answerText: answer,
                onEnter: () {
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
