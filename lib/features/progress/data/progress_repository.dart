import 'package:shared_preferences/shared_preferences.dart';

import '../domain/progress.dart';

class ProgressRepository {
  static const _storiesCompletedKey = 'stories_completed';
  static const _starsKey = 'stars';
  static const _adventuresCompletedKey = 'adventures_completed';
  static const _streakKey = 'streak';
  static const _completedStoryIdsKey = 'completed_story_ids';
  static const _lastReadingDateKey = 'last_reading_date';

  Future<UserProgress> loadProgress() async {
    final preferences = await SharedPreferences.getInstance();

    final completedStoryIds =
        preferences.getStringList(_completedStoryIdsKey) ?? [];

    final storedStreak = preferences.getInt(_streakKey) ?? 0;
    final lastReadingDate = preferences.getString(_lastReadingDateKey);

    final effectiveStreak = _calculateCurrentStreak(
      storedStreak: storedStreak,
      lastReadingDate: lastReadingDate,
    );

    if (effectiveStreak != storedStreak) {
      await preferences.setInt(_streakKey, effectiveStreak);
    }

    return UserProgress(
      storiesCompleted: completedStoryIds.length,
      stars: preferences.getInt(_starsKey) ?? 0,
      adventuresCompleted: preferences.getInt(_adventuresCompletedKey) ?? 0,
      streak: effectiveStreak,
      completedStoryIds: completedStoryIds,
      lastReadingDate: lastReadingDate,
    );
  }

  Future<void> saveProgress(UserProgress progress) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setInt(_storiesCompletedKey, progress.storiesCompleted);

    await preferences.setInt(_starsKey, progress.stars);

    await preferences.setInt(
      _adventuresCompletedKey,
      progress.adventuresCompleted,
    );

    await preferences.setInt(_streakKey, progress.streak);

    await preferences.setStringList(
      _completedStoryIdsKey,
      progress.completedStoryIds,
    );

    if (progress.lastReadingDate != null) {
      await preferences.setString(
        _lastReadingDateKey,
        progress.lastReadingDate!,
      );
    }
  }

  Future<UserProgress> registerStoryCompletion({
    required String storyId,
    required int earnedStars,
  }) async {
    final currentProgress = await loadProgress();

    final completedStoryIds = [...currentProgress.completedStoryIds];

    final alreadyCompleted = completedStoryIds.contains(storyId);

    if (!alreadyCompleted) {
      completedStoryIds.add(storyId);
    }

    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);

    var newStreak = currentProgress.streak;

    if (currentProgress.lastReadingDate == null) {
      newStreak = 1;
    } else {
      final lastDate = DateTime.parse(currentProgress.lastReadingDate!);

      final normalizedLastDate = DateTime(
        lastDate.year,
        lastDate.month,
        lastDate.day,
      );

      final difference = today.difference(normalizedLastDate).inDays;

      if (difference == 0) {
        // Ya realizó una historia hoy.
        // La racha no aumenta otra vez.
        newStreak = currentProgress.streak;
      } else if (difference == 1) {
        // Día consecutivo.
        newStreak = currentProgress.streak + 1;
      } else {
        // Se perdió al menos un día.
        // Comienza una nueva racha.
        newStreak = 1;
      }
    }

    final updatedProgress = currentProgress.copyWith(
      storiesCompleted: completedStoryIds.length,
      completedStoryIds: completedStoryIds,
      stars: alreadyCompleted
          ? currentProgress.stars
          : currentProgress.stars + earnedStars,
      streak: newStreak,
      lastReadingDate: _dateToString(today),
    );

    await saveProgress(updatedProgress);

    return updatedProgress;
  }

  int _calculateCurrentStreak({
    required int storedStreak,
    required String? lastReadingDate,
  }) {
    if (lastReadingDate == null || storedStreak == 0) {
      return 0;
    }

    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);

    final parsedLastDate = DateTime.tryParse(lastReadingDate);

    if (parsedLastDate == null) {
      return 0;
    }

    final normalizedLastDate = DateTime(
      parsedLastDate.year,
      parsedLastDate.month,
      parsedLastDate.day,
    );

    final difference = today.difference(normalizedLastDate).inDays;

    // Leyó hoy o ayer: la racha todavía está viva.
    if (difference <= 1) {
      return storedStreak;
    }

    // Pasó al menos un día completo sin leer.
    return 0;
  }

  String _dateToString(DateTime date) {
    final year = date.year.toString().padLeft(4, '0');
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');

    return '$year-$month-$day';
  }
}
