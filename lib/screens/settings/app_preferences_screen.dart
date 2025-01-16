import 'package:flutter/material.dart';

class AppPreferencesScreen extends StatelessWidget {
  const AppPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppPreferences")),
      body: Center(
        child: Text("AppPreferences Content"),
      ),
    );
  }
}
