import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue[100],
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/app_logo.png'),
                    radius: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  const Text(
                    'Welcome, User!',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            // Feature Buttons
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(8.0),
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: [
                _buildDashboardCard(
                  context,
                  title: 'Products',
                  icon: Icons.shopping_cart,
                  color: Colors.green,
                  onTap: () {
                    Navigator.pushNamed(context, '/shop');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Vehicles',
                  icon: Icons.directions_car,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.pushNamed(context, '/vehicle');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Settings',
                  icon: Icons.settings,
                  color: Colors.blueGrey,
                  onTap: () {
                    Navigator.pushNamed(context, '/profile_settings');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Support',
                  icon: Icons.help_outline,
                  color: Colors.purple,
                  onTap: () {
                    Navigator.pushNamed(context, '/support');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40.0, color: Colors.white),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
