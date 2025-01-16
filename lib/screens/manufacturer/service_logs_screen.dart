import 'package:flutter/material.dart';

class ServiceLogsScreen extends StatelessWidget {
  const ServiceLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ServiceLogs")),
      body: Center(
        child: Text("ServiceLogs Content"),
      ),
    );
  }
}
