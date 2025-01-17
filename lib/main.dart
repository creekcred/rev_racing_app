import 'package:flutter/material.dart';
import 'screens/home_screen.dart';  // Import the HomeScreen where the product will be selected

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rev Racing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),  // Set HomeScreen as the home page
    );
  }
}
