import 'package:flutter/material.dart';
import 'package:spotify_clone/core/config/theme/app.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Container(),
    );
  }
}
