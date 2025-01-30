import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the new widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Internship Task',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(), // Load HomeScreen
    );
  }
}
