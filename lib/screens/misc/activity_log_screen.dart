import 'package:flutter/material.dart';

class ActivityLogScreen extends StatelessWidget {
  const ActivityLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ActivityLog")),
      body: Center(
        child: Text("ActivityLog Content"),
      ),
    );
  }
}
