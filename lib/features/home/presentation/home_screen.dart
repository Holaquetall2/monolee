import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../progress/data/progress_repository.dart';
import '../../progress/domain/progress.dart';
import '../../progress/presentation/progress_screen.dart';
import '../../stories/data/story_repository.dart';
import '../../stories/domain/story.dart';
import '../../stories/presentation/story_list_screen.dart';
import '../../stories/presentation/story_reader_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProgressRepository _progressRepository = ProgressRepository();

  UserProgress _progress = const UserProgress();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final progress = await _progressRepository.loadProgress();

    if (!mounted) {
      return;
    }

    setState(() {
      _progress = progress;
      _loading = false;
    });
  }

  Story? _nextStory() {
    final stories = StoryRepository.stories;

    if (stories.isEmpty) {
      return null;
    }

    final pendingStories = stories.where(
      (story) => !_progress.completedStoryIds.contains(story.id),
    );

    if (pendingStories.isNotEmpty) {
      return pendingStories.first;
    }

    return stories.first;
  }

  Future<void> _startAdventure() async {
    final story = _nextStory();

    if (story == null) {
      return;
    }

    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StoryReaderScreen(story: story)),
    );

    await _loadProgress();
  }

  Future<void> _openStories() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StoryListScreen()),
    );

    await _loadProgress();
  }

  Future<void> _openProgress() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProgressScreen()),
    );

    await _loadProgress();
  }

  @override
  Widget build(BuildContext context) {
    final stories = StoryRepository.stories;
    final totalStories = stories.length;
    final nextStory = _nextStory();

    final progressValue = totalStories == 0
        ? 0.0
        : (_progress.storiesCompleted / totalStories).clamp(0.0, 1.0);

    final progressPercentage = (progressValue * 100).round();

    final allCompleted =
        totalStories > 0 && _progress.storiesCompleted >= totalStories;

    final adventureButtonText = _progress.storiesCompleted == 0
        ? 'Comenzar aventura'
        : allCompleted
        ? 'Volver a jugar'
        : 'Continuar aventura';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 30),
          child: Column(
            children: [
              const SizedBox(height: 18),

              Image.asset(
                'assets/images/mascot/monolee_home.png',
                height: 190,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 16),

              const Text(
                'MonoLee',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                ),
              ),

              const SizedBox(height: 7),

              const Text(
                'Cada historia es una aventura',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: AppColors.text),
              ),

              const SizedBox(height: 30),

              if (!_loading && nextStory != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 72,
                        height: 72,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Image.asset(
                          'assets/images/mascot/monolee_map.png',
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              allCompleted
                                  ? '¿Otra aventura?'
                                  : 'Tu próxima aventura',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              nextStory.title,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 3),

                            Text(
                              '${nextStory.category} • '
                              '${nextStory.readingTime}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton.icon(
                  onPressed: _startAdventure,
                  icon: const Icon(Icons.auto_stories, size: 24),
                  label: Text(
                    adventureButtonText,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: OutlinedButton.icon(
                  onPressed: _openStories,
                  icon: const Icon(Icons.menu_book, size: 24),
                  label: const Text(
                    'Explorar historias',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                    side: const BorderSide(color: AppColors.primary, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              InkWell(
                borderRadius: BorderRadius.circular(22),
                onTap: _openProgress,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withValues(alpha: 0.22),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 36,
                            color: AppColors.secondary,
                          ),

                          const SizedBox(width: 13),

                          const Expanded(
                            child: Text(
                              'Tu aventura',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          if (!_loading)
                            Text(
                              '$progressPercentage%',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          const SizedBox(width: 4),

                          const Icon(Icons.chevron_right),
                        ],
                      ),

                      const SizedBox(height: 12),

                      if (_loading)
                        const LinearProgressIndicator()
                      else ...[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: LinearProgressIndicator(
                            value: progressValue,
                            minHeight: 9,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${_progress.storiesCompleted} de '
                                '$totalStories historias',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              '⭐ ${_progress.stars}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '🔥 ${_progress.streak}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
