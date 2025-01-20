import 'package:flutter/material.dart';

class DevicePairingScreen extends StatelessWidget {
  final String deviceId;

  const DevicePairingScreen({Key? key, required this.deviceId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pair New Device'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Pairing device with ID: $deviceId'),
            ElevatedButton(
              onPressed: () {
                // Simulate pairing logic
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Device Paired')));
              },
              child: const Text('Pair Device'),
            ),
          ],
        ),
      ),
    );
  }
}
