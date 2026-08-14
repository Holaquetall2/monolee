import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../progress/data/progress_repository.dart';
import '../../progress/domain/progress.dart';
import '../../progress/presentation/progress_screen.dart';
import '../../stories/data/story_repository.dart';
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

  Future<void> _startAdventure() async {
    final stories = StoryRepository.stories;

    if (stories.isEmpty) {
      return;
    }

    final progress = await _progressRepository.loadProgress();

    final pendingStories = stories.where(
      (story) => !progress.completedStoryIds.contains(story.id),
    );

    final story = pendingStories.isNotEmpty
        ? pendingStories.first
        : stories.first;

    if (!mounted) {
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
    final totalStories = StoryRepository.stories.length;

    final adventureButtonText = _progress.storiesCompleted == 0
        ? 'Comenzar aventura'
        : _progress.storiesCompleted < totalStories
        ? 'Continuar aventura'
        : 'Volver a jugar';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),

              const Text('🐵', style: TextStyle(fontSize: 90)),

              const SizedBox(height: 12),

              const Text(
                'MonoLee',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Cada historia es una aventura',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: AppColors.text),
              ),

              const SizedBox(height: 40),

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

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 58,
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

              const Spacer(),

              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: _openProgress,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        size: 36,
                        color: AppColors.secondary,
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tu aventura',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            if (_loading)
                              const Text('Cargando progreso...')
                            else
                              Text(
                                '${_progress.storiesCompleted} de $totalStories '
                                'historias • ⭐ ${_progress.stars}',
                                style: const TextStyle(fontSize: 14),
                              ),
                          ],
                        ),
                      ),

                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
