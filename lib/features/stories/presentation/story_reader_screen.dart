import 'package:flutter/material.dart';

import '../domain/story.dart';

import '../../quiz/presentation/quiz_screen.dart';

class StoryReaderScreen extends StatelessWidget {
  final Story story;

  const StoryReaderScreen({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leyendo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      '🦊',
                      style: TextStyle(
                        fontSize: 72,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    story.title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Wrap(
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

                  const SizedBox(height: 28),

                  Text(
                    story.description,
                    style: const TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Divider(),

                  const SizedBox(height: 24),

                  Text(
                    story.content,
                    style: const TextStyle(
                      fontSize: 19,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => QuizScreen(
                            storyId: story.id,
                        ),
                        ),
                    );
                    },
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text(
                    'Terminé de leer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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

  const _InfoChip({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        icon,
        size: 18,
      ),
      label: Text(text),
    );
  }
}