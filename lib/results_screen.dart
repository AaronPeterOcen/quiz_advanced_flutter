import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/data/question_data.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'questions_index': i,
          'questions': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'chosen_answer': chosenAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You have answered X out of 6 correctly'),
            const SizedBox(
              height: 20,
            ),
            const Text('List of questions and answers...'),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: const Text('Try Again!'))
          ],
        ),
      ),
    );
  }
}
