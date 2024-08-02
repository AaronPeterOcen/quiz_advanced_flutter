import 'package:flutter/material.dart';
import 'package:quiz_advanced_flutter/data/question_data.dart';
import 'package:quiz_advanced_flutter/questions_summary.dart';

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
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((info) {
      return info['chosen-answer'] == info['correct-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You have answered $numCorrectQuestions out of $numTotalQuestions correctly',
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(
              summaryData,
            ),
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
