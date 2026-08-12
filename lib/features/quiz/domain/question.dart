enum QuestionType {
  multipleChoice,
  trueFalse,
  open,
}

enum ComprehensionType {
  literal,
  inferential,
  mainIdea,
  vocabulary,
  reflection,
}

class Question {
  final String id;
  final String text;
  final QuestionType type;
  final ComprehensionType comprehensionType;
  final List<String> options;
  final String correctAnswer;
  final String explanation;

  const Question({
    required this.id,
    required this.text,
    required this.type,
    required this.comprehensionType,
    this.options = const [],
    required this.correctAnswer,
    required this.explanation,
  });
}