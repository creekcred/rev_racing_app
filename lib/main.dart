import 'package:flutter/material.dart';
import 'screens/dashboard/home_screen.dart';  // Correct path for HomeScreen
import 'screens/dashboard/add_product_screen.dart';  // Correct path for AddProductScreen
import 'screens/dashboard/product_details_screen.dart';  // Correct path for ProductDetailsScreen
import 'screens/dashboard/vehicle_details_screen.dart';  // Correct path for VehicleDetailsScreen
import 'widgets/app_bar_widget.dart';  // Correct path for AppBarWidget
import 'screens/widgets/drawer_menu.dart';  // Correct path for DrawerMenu

/// The entry point of the application, where the app is initialized and run.
/// The main function runs the app and defines the initial route for the app.
void main() {
  runApp(MyApp());
}

/// This is the root widget of the application. It sets up the MaterialApp,
/// routes, and some basic configuration like theme, etc.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rev Racing', // App title
      theme: ThemeData(
        primarySwatch: Colors.orange,  // App's primary color theme
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',  // The initial route when the app is launched
      routes: {
        '/': (context) => HomeScreen(),  // Home screen when the app starts
        '/addProduct': (context) => AddProductScreen(),  // Route for adding a product
        '/productDetails': (context) => ProductDetailsScreen(productId: "default"),  // Route for viewing product details
        '/vehicleDetails': (context) => VehicleDetailsScreen(productId: "default"),  // Route for vehicle details
      },
    );
  }
}

/// This is the HomeScreen which is the main screen that users interact with.
/// It shows a list of devices or shock settings and allows navigation to details.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Use the custom app bar widget for consistency
      drawer: DrawerMenu(),  // Use the custom drawer menu for consistent navigation
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("My Products", style: Theme.of(context).textTheme.headlineMedium),  // Title for the section
            Expanded(
              child: ListView(
                children: [
                  // ShockDeviceCard is used to display each product. You can add more cards dynamically.
                  ShockDeviceCard(
                    productName: "Trophy Truck Front Shock",  // Name of the product
                    status: "Connected",  // Status of the product (could be "Connected" or "Not Connected")
                    onTap: () {
                      // Navigates to the ProductDetailsScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailsScreen(productId: "front_shock")),
                      );
                    },
                  ),
                  ShockDeviceCard(
                    productName: "Class 10 Rear Shock",  // Another shock product
                    status: "Not Connected",
                    onTap: () {
                      // Navigates to VehicleDetailsScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VehicleDetailsScreen(productId: "rear_shock")),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Button to navigate to AddProductScreen to add a new product
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProductScreen()),
                );
              },
              child: Text("Add Product"),
            ),
          ],
        ),
      ),
    );
  }
}

/// A simple screen to add a new product to the system.
class AddProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Custom app bar
      drawer: DrawerMenu(),  // Custom drawer
      body: Center(
        child: Column(
          children: [
            Text("Add New Product"),  // Title
            // You can add input fields, forms, or logic to handle the product addition here.
            ElevatedButton(
              onPressed: () {
                // Logic to add the product (e.g., saving to the database or going back)
              },
              child: Text("Save Product"),
            ),
          ],
        ),
      ),
    );
  }
}

/// ProductDetailsScreen allows users to view detailed information about a product.
/// You can add more widgets for editing or viewing the product's settings.
class ProductDetailsScreen extends StatelessWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Custom app bar
      drawer: DrawerMenu(),  // Custom drawer
      body: Center(
        child: Column(
          children: [
            Text("Product Details for $productId"),  // Display productId dynamically
            // You can add more widgets here to show details about the product
            ElevatedButton(
              onPressed: () {
                // Navigate to edit screen or other actions
              },
              child: Text("Edit Product"),
            ),
          ],
        ),
      ),
    );
  }
}

/// VehicleDetailsScreen allows users to view and edit details of the vehicle settings.
class VehicleDetailsScreen extends StatelessWidget {
  final String productId;

  const VehicleDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Custom app bar
      drawer: DrawerMenu(),  // Custom drawer
      body: Center(
        child: Column(
          children: [
            Text("Vehicle Details for $productId"),  // Display productId dynamically
            // Add widgets here to adjust shock settings or other vehicle details
            ElevatedButton(
              onPressed: () {
                // Logic to edit vehicle settings
              },
              child: Text("Edit Vehicle Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
