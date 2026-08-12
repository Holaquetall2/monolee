import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi aventura'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

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
                  '🐒',
                  style: TextStyle(fontSize: 62),
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
              '¡Sigue leyendo y descubriendo nuevas historias!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 30),

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
                    value:
                        '${currentProgress.stars}',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    icon: '🗺️',
                    title: 'Aventuras',
                    value:
                        '${currentProgress.adventuresCompleted}',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    icon: '🔥',
                    title: 'Racha',
                    value:
                        '${currentProgress.streak} días',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer,
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
                    currentProgress.storiesCompleted == 0
                        ? 'Tu primera aventura te está esperando.'
                        : 'Cada historia que lees te hace aprender algo nuevo.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
            style: TextStyle(
              fontSize: 24,
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