import 'package:flutter/material.dart';

class VehicleDetailsScreen extends StatelessWidget {
  const VehicleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("VehicleDetails")),
      body: Center(
        child: Text("VehicleDetails Content"),
      ),
    );
  }
}
