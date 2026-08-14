import 'package:flutter/material.dart';

import '../../progress/data/progress_repository.dart';
import '../../progress/domain/progress.dart';
import '../data/story_repository.dart';
import '../domain/story.dart';
import 'story_reader_screen.dart';

class StoryListScreen extends StatefulWidget {
  const StoryListScreen({super.key});

  @override
  State<StoryListScreen> createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {
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

  Future<void> _openStory(Story story) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StoryReaderScreen(story: story)),
    );

    await _loadProgress();
  }

  String _storyEmoji(String storyId) {
    switch (storyId) {
      case 'el-zorro-y-las-uvas':
        return '🦊';
      case 'la-liebre-y-la-tortuga':
        return '🐢';
      case 'la-cigarra-y-la-hormiga':
        return '🐜';
      case 'el-leon-y-el-raton':
        return '🦁';
      case 'el-pastor-mentiroso':
        return '🐺';
      case 'el-arbol-generoso':
        return '🌳';
      default:
        return '📖';
    }
  }

  Color _difficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'fácil':
        return Colors.green;
      case 'medio':
        return Colors.orange;
      case 'difícil':
        return Colors.red;
      default:
        return Colors.blueGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final stories = StoryRepository.stories;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explorar historias'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📚 Biblioteca de aventuras',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _loading
                          ? 'Cargando tu progreso...'
                          : '${_progress.storiesCompleted} de '
                                '${stories.length} historias completadas',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 12),
                    if (!_loading)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressIndicator(
                          minHeight: 9,
                          value: stories.isEmpty
                              ? 0
                              : _progress.storiesCompleted / stories.length,
                        ),
                      ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];

                  final completed = _progress.completedStoryIds.contains(
                    story.id,
                  );

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Material(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(24),
                      elevation: 1.5,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(24),
                        onTap: () => _openStory(story),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 66,
                                height: 66,
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primary.withValues(alpha: 0.10),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    _storyEmoji(story.id),
                                    style: const TextStyle(fontSize: 36),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 16),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      story.title,
                                      style: const TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    const SizedBox(height: 7),

                                    Text(
                                      story.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        height: 1.35,
                                        color: Colors.grey.shade700,
                                      ),
                                    ),

                                    const SizedBox(height: 12),

                                    Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: [
                                        _InfoTag(
                                          icon: Icons.category_outlined,
                                          text: story.category,
                                        ),
                                        _InfoTag(
                                          icon: Icons.schedule,
                                          text: story.readingTime,
                                        ),
                                        _DifficultyTag(
                                          difficulty: story.difficulty,
                                          color: _difficultyColor(
                                            story.difficulty,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 12),

                                    Row(
                                      children: [
                                        Icon(
                                          completed
                                              ? Icons.check_circle_rounded
                                              : Icons.radio_button_unchecked,
                                          size: 20,
                                          color: completed
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                        const SizedBox(width: 7),
                                        Text(
                                          completed
                                              ? 'Completada'
                                              : 'Pendiente',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: completed
                                                ? Colors.green
                                                : Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(width: 8),

                              const Padding(
                                padding: EdgeInsets.only(top: 22),
                                child: Icon(
                                  Icons.chevron_right_rounded,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTag extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoTag({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: Colors.grey.shade700),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _DifficultyTag extends StatelessWidget {
  final String difficulty;
  final Color color;

  const _DifficultyTag({required this.difficulty, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        difficulty,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
