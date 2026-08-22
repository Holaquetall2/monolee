import 'dart:math';

import 'package:flutter/material.dart';

import '../../progress/data/progress_repository.dart';
import '../data/quiz_repository.dart';
import '../domain/question.dart';
import '../domain/quiz_result.dart';
import 'quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String storyId;

  const QuizScreen({super.key, required this.storyId});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<Question> questions;
  final List<QuizAnswer> answers = [];

  final ProgressRepository progressRepository = ProgressRepository();

  int currentQuestion = 0;
  String? selectedAnswer;
  bool answerChecked = false;

  @override
  void initState() {
    super.initState();

    questions = _prepareQuestions();
  }

  List<Question> _prepareQuestions() {
    final originalQuestions =
        QuizRepository.questionsByStory[widget.storyId] ?? [];

    final random = Random();

    final preparedQuestions = originalQuestions.map((question) {
      final shuffledOptions = [...question.options]..shuffle(random);

      return Question(
        id: question.id,
        text: question.text,
        type: question.type,
        comprehensionType: question.comprehensionType,
        options: shuffledOptions,
        correctAnswer: question.correctAnswer,
        explanation: question.explanation,
      );
    }).toList();

    preparedQuestions.shuffle(random);

    return preparedQuestions;
  }

  void selectAnswer(String answer) {
    if (answerChecked) {
      return;
    }

    setState(() {
      selectedAnswer = answer;
    });
  }

  void checkAnswer() {
    if (selectedAnswer == null || answerChecked) {
      return;
    }

    final question = questions[currentQuestion];

    final isCorrect = selectedAnswer == question.correctAnswer;

    answers.add(
      QuizAnswer(
        question: question,
        answer: selectedAnswer!,
        isCorrect: isCorrect,
      ),
    );

    setState(() {
      answerChecked = true;
    });
  }

  void continueQuiz() {
    if (!answerChecked) {
      return;
    }

    if (currentQuestion == questions.length - 1) {
      final result = QuizResult(answers: List.unmodifiable(answers));

      showResult(result);
      return;
    }

    setState(() {
      currentQuestion++;
      selectedAnswer = null;
      answerChecked = false;
    });
  }

  Future<void> showResult(QuizResult result) async {
    await progressRepository.registerStoryCompletion(
      storyId: widget.storyId,
      earnedStars: result.stars,
    );

    if (!mounted) {
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            QuizResultScreen(result: result, storyId: widget.storyId),
      ),
    );
  }

  Color _optionBorderColor(
    BuildContext context,
    String option,
    Question question,
  ) {
    if (!answerChecked) {
      return selectedAnswer == option
          ? Theme.of(context).colorScheme.primary
          : Colors.grey.shade300;
    }

    if (option == question.correctAnswer) {
      return Colors.green;
    }

    if (option == selectedAnswer && option != question.correctAnswer) {
      return Colors.red;
    }

    return Colors.grey.shade300;
  }

  Color? _optionBackgroundColor(
    BuildContext context,
    String option,
    Question question,
  ) {
    if (!answerChecked) {
      if (selectedAnswer == option) {
        return Theme.of(context).colorScheme.primary.withValues(alpha: 0.10);
      }

      return null;
    }

    if (option == question.correctAnswer) {
      return Colors.green.withValues(alpha: 0.10);
    }

    if (option == selectedAnswer && option != question.correctAnswer) {
      return Colors.red.withValues(alpha: 0.10);
    }

    return null;
  }

  IconData? _optionIcon(String option, Question question) {
    if (!answerChecked) {
      return selectedAnswer == option
          ? Icons.radio_button_checked
          : Icons.radio_button_unchecked;
    }

    if (option == question.correctAnswer) {
      return Icons.check_circle_rounded;
    }

    if (option == selectedAnswer && option != question.correctAnswer) {
      return Icons.cancel_rounded;
    }

    return Icons.radio_button_unchecked;
  }

  Color _optionIconColor(
    BuildContext context,
    String option,
    Question question,
  ) {
    if (!answerChecked) {
      return selectedAnswer == option
          ? Theme.of(context).colorScheme.primary
          : Colors.grey;
    }

    if (option == question.correctAnswer) {
      return Colors.green;
    }

    if (option == selectedAnswer && option != question.correctAnswer) {
      return Colors.red;
    }

    return Colors.grey.shade400;
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return const Scaffold(
        body: Center(child: Text('No hay preguntas disponibles.')),
      );
    }

    final question = questions[currentQuestion];
    final isCorrect = selectedAnswer == question.correctAnswer;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta ${currentQuestion + 1} de ${questions.length}'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: LinearProgressIndicator(
            minHeight: 5,
            value: (currentQuestion + 1) / questions.length,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 22, 20, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/mascot/monolee_thinking.png',
                  height: 115,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                _questionTypeLabel(question.comprehensionType),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                question.text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 24),

              Expanded(
                child: ListView(
                  children: [
                    ...question.options.map((option) {
                      final isSelected = selectedAnswer == option;

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: answerChecked
                              ? null
                              : () => selectAnswer(option),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 180),
                            padding: const EdgeInsets.all(17),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: _optionBorderColor(
                                  context,
                                  option,
                                  question,
                                ),
                                width:
                                    isSelected ||
                                        (answerChecked &&
                                            option == question.correctAnswer)
                                    ? 2
                                    : 1,
                              ),
                              color: _optionBackgroundColor(
                                context,
                                option,
                                question,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  _optionIcon(option, question),
                                  color: _optionIconColor(
                                    context,
                                    option,
                                    question,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                Expanded(
                                  child: Text(
                                    option,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      height: 1.35,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),

                    if (answerChecked) ...[
                      const SizedBox(height: 8),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: isCorrect
                              ? Colors.green.withValues(alpha: 0.10)
                              : Colors.orange.withValues(alpha: 0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  isCorrect
                                      ? Icons.celebration_rounded
                                      : Icons.lightbulb_rounded,
                                  color: isCorrect
                                      ? Colors.green
                                      : Colors.orange,
                                ),
                                const SizedBox(width: 9),
                                Expanded(
                                  child: Text(
                                    isCorrect ? '¡Muy bien!' : 'Veamos por qué',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),

                            Text(
                              question.explanation,
                              style: const TextStyle(
                                fontSize: 15,
                                height: 1.45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: selectedAnswer == null
                      ? null
                      : answerChecked
                      ? continueQuiz
                      : checkAnswer,
                  child: Text(
                    !answerChecked
                        ? 'Comprobar respuesta'
                        : currentQuestion == questions.length - 1
                        ? 'Ver resultado'
                        : 'Siguiente pregunta',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _questionTypeLabel(ComprehensionType type) {
    switch (type) {
      case ComprehensionType.literal:
        return '🔎 Comprensión literal';
      case ComprehensionType.inferential:
        return '🧠 Comprensión inferencial';
      case ComprehensionType.mainIdea:
        return '💡 Idea principal';
      case ComprehensionType.vocabulary:
        return '📖 Vocabulario';
      case ComprehensionType.reflection:
        return '💭 Reflexión';
    }
  }
}
