import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/answer_button.dart';
import 'package:quiz_advanced_flutter/data/question_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    // final questionAnswer = questions[1];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 236, 241, 243),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Iterate over each 'answer' in 'currentQuestion.answers'.
            // 'map' creates a new list by applying the function to each item in the original list.
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // For each 'answer', create an 'AnswerButton' widget.
              // 'answerText' is set to the current 'answer'.
              // 'onEnter' is set to an empty function (placeholder for actual logic).
              return AnswerButton(answerText: answer, onEnter: () {});
            })
          ],
        ),
      ),
    );
  }
}
