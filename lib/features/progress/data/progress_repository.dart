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

    return UserProgress(
      storiesCompleted: completedStoryIds.length,
      stars: preferences.getInt(_starsKey) ?? 0,
      adventuresCompleted:
          preferences.getInt(_adventuresCompletedKey) ?? 0,
      streak: preferences.getInt(_streakKey) ?? 0,
      completedStoryIds: completedStoryIds,
      lastReadingDate:
          preferences.getString(_lastReadingDateKey),
    );
  }

  Future<void> saveProgress(UserProgress progress) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setInt(
      _storiesCompletedKey,
      progress.storiesCompleted,
    );

    await preferences.setInt(
      _starsKey,
      progress.stars,
    );

    await preferences.setInt(
      _adventuresCompletedKey,
      progress.adventuresCompleted,
    );

    await preferences.setInt(
      _streakKey,
      progress.streak,
    );

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

    final completedStoryIds = [
      ...currentProgress.completedStoryIds,
    ];

    final alreadyCompleted =
        completedStoryIds.contains(storyId);

    if (!alreadyCompleted) {
      completedStoryIds.add(storyId);
    }

    final now = DateTime.now();

    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    var newStreak = currentProgress.streak;

    if (currentProgress.lastReadingDate == null) {
      newStreak = 1;
    } else {
      final lastDate =
          DateTime.parse(currentProgress.lastReadingDate!);

      final normalizedLastDate = DateTime(
        lastDate.year,
        lastDate.month,
        lastDate.day,
      );

      final difference =
          today.difference(normalizedLastDate).inDays;

      if (difference == 1) {
        newStreak = currentProgress.streak + 1;
      } else if (difference > 1) {
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

  String _dateToString(DateTime date) {
    final year = date.year.toString().padLeft(4, '0');
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');

    return '$year-$month-$day';
  }
}