class QuizQue {
  const QuizQue({required this.text, required this.answers});
  final String text;
  final List<String> answers;

// for shuffle ans beacuse all questions have First ans
  List<String> shuffledans() {
    //copy of the original answer list
    final shuffledList = List.of(answers);
    //do shuffle
    shuffledList.shuffle();
    return shuffledList;
  }
}
