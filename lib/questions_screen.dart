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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Color.fromARGB(255, 236, 241, 243)),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onEnter: () {});
          })
        ],
      ),
    );
  }
}
