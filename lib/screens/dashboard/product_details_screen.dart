import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Adding some padding to the body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // Aligning content to the left
          children: <Widget>[
            Text(
              'Product ID: $productId',
              style: Theme.of(context).textTheme.titleLarge,  // Styling for product ID
            ),
            SizedBox(height: 20),  // Spacing between elements
            // You can expand this section by adding more details about the product
            Text(
              'Product details will be displayed here...', // Placeholder for product details
              style: Theme.of(context).textTheme.bodyMedium,  // Regular body text style
            ),
            // You can add more widgets here to display product info dynamically
          ],
        ),
      ),
    );
  }
}
