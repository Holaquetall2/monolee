import 'package:flutter/material.dart';

import '../features/home/presentation/home_screen.dart';
import 'theme/app_theme.dart';

class MonoLeeApp extends StatelessWidget {
  const MonoLeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonoLee',
      theme: AppTheme.theme,
      home: const HomeScreen(),
    );
  }
}
