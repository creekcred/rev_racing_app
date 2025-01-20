import 'package:flutter/material.dart';
import 'features/dashboard/dashboard_screen.dart';  // Import HomeScreen for the main page

void main() {
  runApp(const MyApp());  // Entry point of the application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rev Racing',  // The title of the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // Customize the theme
        useMaterial3: true,  // Use Material 3 design
      ),
      home: const HomeScreen(),  // Set HomeScreen as the main screen of the app
    );
  }
}
