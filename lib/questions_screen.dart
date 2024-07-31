import 'package:flutter/material.dart';

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
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'A1',
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'A2',
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'A3',
            ),
          ),
        ],
      ),
    );
  }
}
