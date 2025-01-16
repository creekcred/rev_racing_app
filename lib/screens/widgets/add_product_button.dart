import 'package:flutter/material.dart';

/// A custom button to add a new product.
/// This widget is used across screens like HomeScreen to add new devices/products.
class AddProductButton extends StatelessWidget {
  // Callback when the button is pressed
  final VoidCallback onPressed;

  // Constructor to initialize the button with an onPressed function
  const AddProductButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,  // Executes the passed callback when pressed
      child: Text('Add Product'),  // Button label
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),  // Customize the button's color
      ),
    );
  }
}
