import 'package:flutter/material.dart';
import 'dashboard_model.dart';

class DashboardProductCard extends StatelessWidget {
  final DashboardModel product;

  const DashboardProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Image.asset(product.productImage),  // Display product image
        title: Text(product.productName),            // Display product name
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status: ${product.status}'),
            Text('Vehicle: ${product.vehicleType}'),
            Text('Shock Type: ${product.shockType}'),
          ],
        ),
        onTap: () {
          // Navigate to the product details page or related screen
        },
      ),
    );
  }
}
