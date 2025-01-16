import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AddProduct")),
      body: Center(
        child: Text("AddProduct Content"),
      ),
    );
  }
}
