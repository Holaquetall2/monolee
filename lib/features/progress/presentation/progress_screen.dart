import 'package:flutter/material.dart';

import '../../stories/data/story_repository.dart';
import '../data/progress_repository.dart';
import '../domain/progress.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  final ProgressRepository repository = ProgressRepository();

  UserProgress? progress;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final result = await repository.loadProgress();

    if (!mounted) {
      return;
    }

    setState(() {
      progress = result;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading || progress == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final currentProgress = progress!;
    final totalStories = StoryRepository.stories.length;

    final progressValue = totalStories == 0
        ? 0.0
        : currentProgress.storiesCompleted / totalStories;

    final progressPercentage = (progressValue * 100).round();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi aventura'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 30),
          child: Column(
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '🐵',
                    style: TextStyle(
                      fontSize: 62,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Mi aventura',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                _headerMessage(currentProgress),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.4,
                  color: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 28),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Progreso de aventuras',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          '$progressPercentage%',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .primary,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: LinearProgressIndicator(
                        value: progressValue.clamp(0.0, 1.0),
                        minHeight: 12,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${currentProgress.storiesCompleted} de '
                        '$totalStories historias completadas',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      icon: '📚',
                      title: 'Historias',
                      value:
                          '${currentProgress.storiesCompleted}',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      icon: '⭐',
                      title: 'Estrellas',
                      value: '${currentProgress.stars}',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      icon: '🔥',
                      title: 'Racha',
                      value: '${currentProgress.streak} días',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      icon: '🏆',
                      title: 'Logros',
                      value:
                          '${_unlockedAchievements(currentProgress)}',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Logros',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 14),

              _AchievementCard(
                icon: '🌟',
                title: 'Primera aventura',
                description: 'Completa tu primera historia.',
                unlocked:
                    currentProgress.storiesCompleted >= 1,
              ),

              _AchievementCard(
                icon: '📚',
                title: 'Lector curioso',
                description: 'Completa 3 historias.',
                unlocked:
                    currentProgress.storiesCompleted >= 3,
              ),

              _AchievementCard(
                icon: '🧭',
                title: 'Gran explorador',
                description: 'Completa todas las historias.',
                unlocked: totalStories > 0 &&
                    currentProgress.storiesCompleted >=
                        totalStories,
              ),

              _AchievementCard(
                icon: '⭐',
                title: 'Coleccionista de estrellas',
                description: 'Consigue 10 estrellas.',
                unlocked: currentProgress.stars >= 10,
              ),

              _AchievementCard(
                icon: '🔥',
                title: 'Racha imparable',
                description: 'Mantén una racha de 3 días.',
                unlocked: currentProgress.streak >= 3,
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .secondaryContainer,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const Text(
                      '🌟 ¡Sigue así, aventurero!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _footerMessage(
                        currentProgress,
                        totalStories,
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _headerMessage(UserProgress progress) {
    if (progress.storiesCompleted == 0) {
      return 'Tu primera aventura te está esperando.';
    }

    if (progress.storiesCompleted < 3) {
      return '¡Buen comienzo! Ya estás construyendo tu camino como lector.';
    }

    return '¡Cada historia te está convirtiendo en un mejor explorador!';
  }

  String _footerMessage(
    UserProgress progress,
    int totalStories,
  ) {
    if (progress.storiesCompleted == 0) {
      return 'Elige una historia y comienza tu primera aventura.';
    }

    if (progress.storiesCompleted >= totalStories &&
        totalStories > 0) {
      return '¡Completaste todas las historias de MonoLee 1.0!';
    }

    final remaining =
        totalStories - progress.storiesCompleted;

    return 'Te faltan $remaining '
        '${remaining == 1 ? 'historia' : 'historias'} '
        'para completar la biblioteca.';
  }

  int _unlockedAchievements(UserProgress progress) {
    final totalStories = StoryRepository.stories.length;

    var count = 0;

    if (progress.storiesCompleted >= 1) {
      count++;
    }

    if (progress.storiesCompleted >= 3) {
      count++;
    }

    if (totalStories > 0 &&
        progress.storiesCompleted >= totalStories) {
      count++;
    }

    if (progress.stars >= 10) {
      count++;
    }

    if (progress.streak >= 3) {
      count++;
    }

    return count;
  }
}

class _StatCard extends StatelessWidget {
  final String icon;
  final String title;
  final String value;

  const _StatCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        children: [
          Text(
            icon,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Theme.of(context)
                  .colorScheme
                  .primary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final bool unlocked;

  const _AchievementCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.unlocked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: unlocked
            ? Theme.of(context)
                .colorScheme
                .primary
                .withValues(alpha: 0.08)
            : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: unlocked
              ? Theme.of(context)
                  .colorScheme
                  .primary
                  .withValues(alpha: 0.30)
              : Colors.grey.shade300,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: unlocked
                  ? Theme.of(context)
                      .colorScheme
                      .primaryContainer
                  : Colors.grey.shade200,
            ),
            child: Center(
              child: Text(
                unlocked ? icon : '🔒',
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),

          Icon(
            unlocked
                ? Icons.check_circle_rounded
                : Icons.lock_outline_rounded,
            color: unlocked
                ? Colors.green
                : Colors.grey,
          ),
        ],
      ),
    );
  }
}