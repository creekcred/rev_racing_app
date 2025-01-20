import 'device_dashboard_model.dart';  // Import device model

class DeviceDashboardService {
  static Future<List<DeviceDashboardModel>> fetchDeviceData() async {
    await Future.delayed(const Duration(seconds: 2));  // Simulating a network delay

    // Returning mock data
    return [
      DeviceDashboardModel(
        deviceId: "1",
        deviceName: "Rev Shock 1",
        status: "Active",
        type: "Shock",
        deviceImage: 'assets/images/rev_shock_1.jpg',
      ),
      DeviceDashboardModel(
        deviceId: "2",
        deviceName: "Rev Shock 2",
        status: "Inactive",
        type: "Shock",
        deviceImage: 'assets/images/rev_shock_2.jpg',
      ),
    ];
  }
}
