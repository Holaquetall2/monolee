class UserProgress {
  final int storiesCompleted;
  final int stars;
  final int adventuresCompleted;
  final int streak;
  final List<String> completedStoryIds;
  final String? lastReadingDate;

  const UserProgress({
    this.storiesCompleted = 0,
    this.stars = 0,
    this.adventuresCompleted = 0,
    this.streak = 0,
    this.completedStoryIds = const [],
    this.lastReadingDate,
  });

  UserProgress copyWith({
    int? storiesCompleted,
    int? stars,
    int? adventuresCompleted,
    int? streak,
    List<String>? completedStoryIds,
    String? lastReadingDate,
  }) {
    return UserProgress(
      storiesCompleted:
          storiesCompleted ?? this.storiesCompleted,
      stars: stars ?? this.stars,
      adventuresCompleted:
          adventuresCompleted ?? this.adventuresCompleted,
      streak: streak ?? this.streak,
      completedStoryIds:
          completedStoryIds ?? this.completedStoryIds,
      lastReadingDate:
          lastReadingDate ?? this.lastReadingDate,
    );
  }
}