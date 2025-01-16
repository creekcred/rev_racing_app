// lib/models/product.dart

class Product {
  final String name;          // Name of the product
  final String description;   // A brief description of the product
  final double price;         // Price of the product
  final String version;       // Version of the product (e.g., Rev Shocks 2.5, Rev Motion)
  final List<String> features; // Features or capabilities of the product

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.version,
    required this.features,
  });
}

// Example of products
List<Product> productList = [
  Product(
    name: 'Rev Shocks 2.5',
    description: 'Premium shock absorber for racing vehicles.',
    price: 249.99,
    version: '2.5',
    features: ['Durable', 'Adjustable dampening', 'Race ready'],
  ),
  Product(
    name: 'Rev Shocks 3.0',
    description: 'Enhanced shock absorber for maximum performance.',
    price: 299.99,
    version: '3.0',
    features: ['Higher impact resistance', 'Advanced coil spring design', 'Improved stability'],
  ),
  Product(
    name: 'Rev Motion',
    description: 'Device for collecting GPS and impact data from vehicles.',
    price: 399.99,
    version: '1.0',
    features: ['Real-time GPS tracking', 'Impact detection', 'Durable for extreme environments'],
  ),
];
