// TODO Implement this library.import 'package:flutter/material.dart';
import 'models/product.dart';  // Import the Product model

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();  // To manage form validation
  String name = '';
  String description = '';
  double price = 0.0;
  String version = '';
  List<String> features = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _versionController = TextEditingController();

  // Function to handle the form submission and save the new product
  void _saveProduct() {
    if (_formKey.currentState?.validate() ?? false) {
      // Create a new Product instance with the entered details
      Product newProduct = Product(
        name: name,
        description: description,
        price: price,
        version: version,
        features: features,
      );

      // Return the new product to the HomeScreen
      Navigator.pop(context, newProduct);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,  // Form key for validation
          child: ListView(
            children: <Widget>[
              // Product Name input
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Product Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Product Description input
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Product Description',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Product Price input
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                  labelText: 'Product Price',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    price = double.tryParse(value) ?? 0.0;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Product Version input
              TextFormField(
                controller: _versionController,
                decoration: const InputDecoration(
                  labelText: 'Product Version',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    version = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product version';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Features input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Product Features (comma-separated)',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    features = value.split(',').map((e) => e.trim()).toList();
                  });
                },
              ),
              const SizedBox(height: 20),

              // Save Product Button
              ElevatedButton(
                onPressed: _saveProduct,
                child: const Text('Save Product'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
