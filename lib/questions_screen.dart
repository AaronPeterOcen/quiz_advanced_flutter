import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question is ...',
            style: TextStyle(color: Color.fromARGB(255, 236, 241, 243)),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "answer 1",
            onEnter: () {},
          ),
          AnswerButton(
            answerText: "answer 2",
            onEnter: () {},
          ),
          AnswerButton(
            answerText: "answer 3",
            onEnter: () {},
          ),
          AnswerButton(
            answerText: "answer 4",
            onEnter: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
