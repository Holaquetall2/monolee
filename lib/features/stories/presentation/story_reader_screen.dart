import 'package:flutter/material.dart';

import '../../quiz/presentation/quiz_screen.dart';
import '../domain/story.dart';

class StoryReaderScreen extends StatefulWidget {
  final Story story;

  const StoryReaderScreen({super.key, required this.story});

  @override
  State<StoryReaderScreen> createState() => _StoryReaderScreenState();
}

class _StoryReaderScreenState extends State<StoryReaderScreen> {
  final ScrollController _scrollController = ScrollController();

  double _fontSize = 19;
  double _readingProgress = 0;

  Story get story => widget.story;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateReadingProgress);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateReadingProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateReadingProgress() {
    if (!_scrollController.hasClients) {
      return;
    }

    final maxScroll = _scrollController.position.maxScrollExtent;

    final progress = maxScroll <= 0
        ? 1.0
        : (_scrollController.offset / maxScroll).clamp(0.0, 1.0);

    if ((progress - _readingProgress).abs() < 0.01) {
      return;
    }

    setState(() {
      _readingProgress = progress;
    });
  }

  void _increaseFontSize() {
    if (_fontSize >= 26) {
      return;
    }

    setState(() {
      _fontSize += 1;
    });
  }

  void _decreaseFontSize() {
    if (_fontSize <= 16) {
      return;
    }

    setState(() {
      _fontSize -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leyendo'),
        actions: [
          IconButton(
            tooltip: 'Disminuir texto',
            onPressed: _decreaseFontSize,
            icon: const Icon(Icons.text_decrease),
          ),
          IconButton(
            tooltip: 'Aumentar texto',
            onPressed: _increaseFontSize,
            icon: const Icon(Icons.text_increase),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: LinearProgressIndicator(minHeight: 5, value: _readingProgress),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/mascot/monolee_reading.png',
                      height: 165,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    story.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 14),

                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _InfoChip(
                          icon: Icons.auto_stories,
                          text: story.category,
                        ),
                        _InfoChip(
                          icon: Icons.signal_cellular_alt,
                          text: story.difficulty,
                        ),
                        _InfoChip(
                          icon: Icons.schedule,
                          text: story.readingTime,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      story.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 24, 20, 26),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Text(
                      story.content,
                      style: TextStyle(fontSize: _fontSize, height: 1.75),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      '📖 Fin de la lectura',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SafeArea(
            top: false,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 18),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 12,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(storyId: story.id),
                      ),
                    );
                  },
                  icon: const Icon(Icons.psychology_alt_rounded),
                  label: const Text(
                    'Responder preguntas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoChip({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 17),
      label: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
