import 'package:flutter/material.dart';

class DataSyncScreen extends StatelessWidget {
  const DataSyncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DataSync")),
      body: Center(
        child: Text("DataSync Content"),
      ),
    );
  }
}
