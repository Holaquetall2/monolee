import 'package:shared_preferences/shared_preferences.dart';

import '../domain/progress.dart';

class ProgressRepository {
  static const _storiesCompletedKey = 'stories_completed';
  static const _starsKey = 'stars';
  static const _adventuresCompletedKey = 'adventures_completed';
  static const _streakKey = 'streak';
  static const _completedStoryIdsKey = 'completed_story_ids';

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
  }
}