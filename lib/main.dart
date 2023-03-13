import 'package:flutter/material.dart';
import 'package:handson/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Licious Flutter Hands-on',
      theme: ThemeData(),
      home: const TasksScreen(),
    );
  }
}
