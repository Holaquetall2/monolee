import 'package:flutter/material.dart';

void main() {
  runApp(const MonoLeeApp());
}

class MonoLeeApp extends StatelessWidget {
  const MonoLeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonoLee',
      home: Scaffold(
        body: Center(
          child: Text(
            '🐵 MonoLee',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}