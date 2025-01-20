import 'package:flutter/material.dart';
import 'dashboard_model.dart';
import 'dashboard_widget.dart';
import 'dashboard.service.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: FutureBuilder<List<DashboardModel>>(
        future: DashboardService.fetchDashboardData(),  // Fetch dashboard data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading dashboard data.'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products available.'));
          } else {
            final dashboardData = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: dashboardData.length,
                itemBuilder: (context, index) {
                  return DashboardProductCard(
                    product: dashboardData[index],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
