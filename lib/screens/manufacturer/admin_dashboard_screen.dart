import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AdminDashboard")),
      body: Center(
        child: Text("AdminDashboard Content"),
      ),
    );
  }
}
