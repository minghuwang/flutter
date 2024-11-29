import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BadmintonSchedulerApp());
}

class BadmintonSchedulerApp extends StatelessWidget {
  const BadmintonSchedulerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally Roster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}