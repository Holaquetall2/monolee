import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      secondary: AppColors.secondary,
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: AppColors.text)),
  );
}
