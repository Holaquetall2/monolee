import 'package:flutter/material.dart';

import '../../stories/data/story_repository.dart';
import '../../stories/presentation/story_reader_screen.dart';
import '../domain/question.dart';
import '../domain/quiz_result.dart';

class QuizResultScreen extends StatelessWidget {
  final QuizResult result;
  final String storyId;

  const QuizResultScreen({
    super.key,
    required this.result,
    required this.storyId,
  });

  bool get _isLastStory {
    final stories = StoryRepository.stories;

    final currentIndex = stories.indexWhere(
      (story) => story.id == storyId,
    );

    return currentIndex == -1 ||
        currentIndex >= stories.length - 1;
  }

  String get message {
    final percentage = result.percentage;

    if (percentage >= 90) {
      return '¡Excelente, aventurero! 🏆';
    }

    if (percentage >= 70) {
      return '¡Muy bien! 🌟';
    }

    if (percentage >= 50) {
      return '¡Buen trabajo! 💪';
    }

    return '¡Sigamos practicando! 📚';
  }

  String get subtitle {
    final percentage = result.percentage;

    if (percentage >= 90) {
      return 'Demostraste una gran comprensión de la historia.';
    }

    if (percentage >= 70) {
      return 'Comprendiste muy bien la historia.';
    }

    if (percentage >= 50) {
      return 'Vas por buen camino. Cada historia te ayuda a aprender.';
    }

    return 'Leer y practicar te ayudará a mejorar.';
  }

  void _openNextStory(BuildContext context) {
    final stories = StoryRepository.stories;

    final currentIndex = stories.indexWhere(
      (story) => story.id == storyId,
    );

    if (currentIndex == -1 ||
        currentIndex >= stories.length - 1) {
      Navigator.popUntil(
        context,
        (route) => route.isFirst,
      );
      return;
    }

    final nextStory = stories[currentIndex + 1];

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => StoryReaderScreen(
          story: nextStory,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final percentage = result.percentage.round();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Resultado'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Text(
                '🏆',
                style: TextStyle(
                  fontSize: 80,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade700,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Icon(
                    Icons.star,
                    size: 46,
                    color: index < result.stars
                        ? Colors.amber
                        : Colors.grey.shade300,
                  ),
                ),
              ),

              const SizedBox(height: 28),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 26,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withValues(alpha: 0.08),
                ),
                child: Column(
                  children: [
                    Text(
                      '$percentage%',
                      style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${result.correctAnswers} de '
                      '${result.totalQuestions} respuestas correctas',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '¿Cómo te fue?',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              _buildSkillCard(
                context,
                ComprehensionType.literal,
                'Comprensión literal',
              ),

              _buildSkillCard(
                context,
                ComprehensionType.inferential,
                'Comprensión inferencial',
              ),

              _buildSkillCard(
                context,
                ComprehensionType.mainIdea,
                'Idea principal',
              ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () => _openNextStory(context),
                  icon: Icon(
                    _isLastStory
                        ? Icons.flag
                        : Icons.arrow_forward,
                  ),
                  label: Text(
                    _isLastStory
                        ? 'Terminar aventura'
                        : 'Siguiente aventura',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                  },
                  icon: const Icon(Icons.home),
                  label: const Text(
                    'Volver al inicio',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard(
    BuildContext context,
    ComprehensionType type,
    String title,
  ) {
    final answers = result.answers.where(
      (answer) =>
          answer.question.comprehensionType == type,
    );

    final total = answers.length;

    if (total == 0) {
      return const SizedBox.shrink();
    }

    final correct = answers.where(
      (answer) => answer.isCorrect,
    ).length;

    final percentage = (correct / total * 100).round();

    String status;

    if (percentage >= 80) {
      status = '¡Excelente!';
    } else if (percentage >= 60) {
      status = '¡Muy bien!';
    } else {
      status = 'Podemos practicar más';
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '$status • $correct de $total',
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '$percentage%',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}