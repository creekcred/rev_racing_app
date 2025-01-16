import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Product")),  // AppBar for navigation
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Padding to space out content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // Align elements to start
          children: <Widget>[
            // Heading for the form
            Text(
              "Add New Product Details",
              style: Theme.of(context).textTheme.titleLarge,  // Use the headline style
            ),
            SizedBox(height: 20),  // Space between heading and form

            // Add form fields for the new product here
            TextFormField(
              decoration: InputDecoration(
                labelText: "Product Name",
                border: OutlineInputBorder(),
              ),
              // onChanged: (value) => productName = value, // Store the input
            ),
            SizedBox(height: 10),  // Space between fields

            TextFormField(
              decoration: InputDecoration(
                labelText: "Product Description",
                border: OutlineInputBorder(),
              ),
              // onChanged: (value) => productDescription = value,  // Store the input
            ),
            SizedBox(height: 20),  // Space before button

            // Elevated button to save product
            ElevatedButton(
              onPressed: () {
                // Add your product creation logic here
                // For example, saving to a database or navigating
                // print("Product Created");
                // You can also validate the form here before submission.
              },
              child: Text("Save Product"),  // Button text
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.0),  // Padding for the button
                textStyle: TextStyle(fontSize: 16),  // Text style for button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
