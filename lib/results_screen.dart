import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

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
