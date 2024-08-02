import 'package:flutter/material.dart';

// FlutterError

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  // Define a final list of maps to hold the summary data
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // Build a column widget that contains rows for each entry in summaryData
    return Column(
      // Use the map method to transform each entry in summaryData into a Row widget
      children: summaryData.map(
        (info) {
          // For each map entry, return a Row widget
          return Row(
            children: [
              // Display the 1-based index of the question in a Text widget
              Text(((info['questions_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(info['questions'] as String),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(info['chosen_answer'] as String),
                    Text(info['correct_answer'] as String),
                  ],
                ),
              )
            ],
          );
        },
      ).toList(), // Convert the iterable of Row widgets to a list
    );
  }
}
