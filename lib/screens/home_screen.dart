import 'package:flutter/material.dart';
import '../screens/add_product_screen.dart';  // Import the AddProductScreen to navigate to
import '../models/product.dart';  // Import the Product model for displaying product info
import 'settings/settings_page.dart';  // Import the SettingsPage to navigate to

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Product? selectedProduct;  // This will hold the selected product

  // Navigate to the "Add Product" screen and wait for the selected product
  void _goToAddProductScreen(BuildContext context) async {
    final Product? product = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>
    );

    // If a product was selected, update the state with the selected product
    if (product != null) {
      setState(() {
        selectedProduct = product;
      });
    }
  }

  // Navigate to the Settings Page
  void _goToSettingsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rev Racing Home'),  // AppBar title
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _goToSettingsPage(context),  // Open Settings Page
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the selected product or a placeholder message
            if (selectedProduct == null) ...[
              const Text(
                'No product selected yet.',
                style: TextStyle(fontSize: 18),
              ),
            ] else ...[
              Text(
                'Selected Product: ${selectedProduct!.name}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Version: ${selectedProduct!.version}'),
              Text('Price: \$${selectedProduct!.price}'),
            ],
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _goToAddProductScreen(context),  // Navigate to AddProductScreen
              child: const Text('Go to Add Product Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
