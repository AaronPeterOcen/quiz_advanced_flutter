class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // Create a copy of the answers list
    final shuffledList = List.of(answers);

    // Shuffle the copied list
    shuffledList.shuffle();
    return shuffledList;
  }
}
