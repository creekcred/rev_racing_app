import 'package:flutter/material.dart';              // Import Flutter material package for UI components
import 'product_details_screen.dart';               // Import for ProductDetailsScreen
import 'vehicle_details_screen.dart';               // Import for VehicleDetailsScreen
import 'add_product_screen.dart';                   // Import for AddProductScreen
import '../screens/widgets/shock_device_card.dart';         // Import for ShockDeviceCard (custom card widget for displaying shock devices)
import '../screens/widgets/app_bar_widget.dart';            // Import for AppBarWidget (custom app bar widget)
import '../screens/widgets/drawer_menu.dart';                // Import for DrawerMenu (custom navigation drawer)


/// HomeScreen widget is the main dashboard where users can view and navigate to their products and settings.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Custom AppBar for consistency across the app
      drawer: DrawerMenu(),  // Custom Drawer for navigation
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Padding for the main body of the screen
        child: Column(
          children: [
            // Title for the product section
            Text(
              "My Products",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Expanded ListView to show all product cards
            Expanded(
              child: ListView(
                children: [
                  // First ShockDeviceCard for "Trophy Truck Front Shock"
                  ShockDeviceCard(
                    productName: "Trophy Truck Front Shock",
                    status: "Connected",  // Status of the shock device
                    onTap: () {
                      // Navigate to the ProductDetailsScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailsScreen(productId: "front_shock"),
                        ),
                      );
                    },
                  ),
                  // Second ShockDeviceCard for "Class 10 Rear Shock"
                  ShockDeviceCard(
                    productName: "Class 10 Rear Shock",
                    status: "Not Connected",  // Status of the shock device
                    onTap: () {
                      // Navigate to the VehicleDetailsScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              VehicleDetailsScreen(productId: "rear_shock"),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Button to navigate to the AddProductScreen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProductScreen()),
                );
              },
              child: Text("Add Product"),  // Text for the button
            ),
          ],
        ),
      ),
    );
  }
}
