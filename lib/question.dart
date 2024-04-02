class Question {
  String question=' ';
  bool answer=false;

  Question(String? q, bool? ans) {
    question = q ?? 'Default question'; // Providing a default value if q is null
    answer = ans ?? false; // Providing a default value if ans is null
  }
}
