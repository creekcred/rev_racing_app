import 'package:flutter/material.dart';
import 'device_dashboard_service.dart';  // Service to fetch device data
import 'device_dashboard_model.dart';    // Model for device data
import 'device_dashboard_widget.dart';   // Widget to display individual device cards

class DeviceDashboardScreen extends StatelessWidget {
  const DeviceDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Management'),
      ),
      body: FutureBuilder<List<DeviceDashboardModel>>(
        future: DeviceDashboardService.fetchDeviceData(), // Fetch device data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading devices.'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No devices found.'));
          } else {
            final devices = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: devices.length,
                itemBuilder: (context, index) {
                  return DeviceDashboardWidget(device: devices[index]);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
