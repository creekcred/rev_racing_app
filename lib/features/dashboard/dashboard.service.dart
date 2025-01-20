import 'dart:async';
import 'dashboard_model.dart';

class DashboardService {
  // Mock data for now (this can be replaced by API calls or Firebase data)
  static Future<List<DashboardModel>> fetchDashboardData() async {
    // Simulating a delay to fetch data
    await Future.delayed(const Duration(seconds: 2));

    return [
      DashboardModel(
        productId: "1",
        productName: "Trophy Truck Front Shock",
        status: "Connected",
        vehicleType: "Truck",
        shockType: "Compression",
        productImage: 'assets/images/trophy_truck_shock.jpg',
      ),
      DashboardModel(
        productId: "2",
        productName: "Class 10 Rear Shock",
        status: "Not Connected",
        vehicleType: "UTV",
        shockType: "Rebound",
        productImage: 'assets/images/class10_rear_shock.jpg',
      ),
    ];
  }
}
