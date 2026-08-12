import 'question.dart';

class QuizAnswer {
  final Question question;
  final String answer;
  final bool isCorrect;

  const QuizAnswer({
    required this.question,
    required this.answer,
    required this.isCorrect,
  });
}

class QuizResult {
  final List<QuizAnswer> answers;

  const QuizResult({
    required this.answers,
  });

  int get totalQuestions {
    return answers.length;
  }

  int get correctAnswers {
    return answers.where((answer) => answer.isCorrect).length;
  }

  double get percentage {
    if (totalQuestions == 0) {
      return 0;
    }

    return (correctAnswers / totalQuestions) * 100;
  }

  int get stars {
    if (percentage >= 90) {
      return 3;
    }

    if (percentage >= 70) {
      return 2;
    }

    if (percentage >= 50) {
      return 1;
    }

    return 0;
  }
}