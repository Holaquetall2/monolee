import 'package:flutter/material.dart';

import '../../progress/data/progress_repository.dart';
import '../data/quiz_repository.dart';
import '../domain/question.dart';
import '../domain/quiz_result.dart';
import 'quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String storyId;

  const QuizScreen({
    super.key,
    required this.storyId,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<Question> questions;
  final List<QuizAnswer> answers = [];

  final ProgressRepository progressRepository = ProgressRepository();

  int currentQuestion = 0;
  String? selectedAnswer;

  @override
  void initState() {
    super.initState();

    questions =
        QuizRepository.questionsByStory[widget.storyId] ?? [];
  }

  void selectAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
    });
  }

  void nextQuestion() {
    if (selectedAnswer == null) {
      return;
    }

    final question = questions[currentQuestion];
    final isCorrect =
        selectedAnswer == question.correctAnswer;

    answers.add(
      QuizAnswer(
        question: question,
        answer: selectedAnswer!,
        isCorrect: isCorrect,
      ),
    );

    if (currentQuestion == questions.length - 1) {
      final result = QuizResult(
        answers: List.unmodifiable(answers),
      );

      showResult(result);
      return;
    }

    setState(() {
      currentQuestion++;
      selectedAnswer = null;
    });
  }

  Future<void> showResult(QuizResult result) async {
    final currentProgress =
        await progressRepository.loadProgress();

    final alreadyCompleted =
        currentProgress.completedStoryIds.contains(widget.storyId);

    final updatedStoryIds = [
      ...currentProgress.completedStoryIds,
    ];

    if (!alreadyCompleted) {
      updatedStoryIds.add(widget.storyId);
    }

    final updatedProgress = currentProgress.copyWith(
      storiesCompleted: updatedStoryIds.length,
      completedStoryIds: updatedStoryIds,
      stars: alreadyCompleted
          ? currentProgress.stars
          : currentProgress.stars + result.stars,
    );

    await progressRepository.saveProgress(
      updatedProgress,
    );

    if (!mounted) {
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => QuizResultScreen(
          result: result,
          storyId: widget.storyId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text(
            'No hay preguntas disponibles.',
          ),
        ),
      );
    }

    final question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pregunta ${currentQuestion + 1} de ${questions.length}',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value:
                  (currentQuestion + 1) / questions.length,
            ),
            const SizedBox(height: 32),
            Text(
              question.text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 28),
            Expanded(
              child: ListView(
                children: question.options.map((option) {
                  final isSelected =
                      selectedAnswer == option;

                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12),
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(16),
                      onTap: () => selectAnswer(option),
                      child: Container(
                        padding:
                            const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(16),
                          border: Border.all(
                            color: isSelected
                                ? Theme.of(context)
                                    .colorScheme
                                    .primary
                                : Colors.grey.shade300,
                            width: isSelected ? 2 : 1,
                          ),
                          color: isSelected
                              ? Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withValues(
                                    alpha: 0.1,
                                  )
                              : null,
                        ),
                        child: Text(
                          option,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: selectedAnswer == null
                    ? null
                    : nextQuestion,
                child: Text(
                  currentQuestion ==
                          questions.length - 1
                      ? 'Terminar'
                      : 'Siguiente',
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
    );
  }
}