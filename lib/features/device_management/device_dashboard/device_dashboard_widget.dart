import 'package:flutter/material.dart';
import 'device_dashboard_model.dart';  // Model for the device data

class DeviceDashboardWidget extends StatelessWidget {
  final DeviceDashboardModel device;

  const DeviceDashboardWidget({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.asset(device.deviceImage),  // Show device image
        title: Text(device.deviceName),            // Show device name
        subtitle: Text('Status: ${device.status}'), // Show device status
        onTap: () {
          // Navigate to a detailed screen (e.g., device settings)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DevicePairingScreen(deviceId: device.deviceId)),
          );
        },
      ),
    );
  }
}
