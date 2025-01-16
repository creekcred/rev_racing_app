import 'package:flutter/material.dart';
import 'add_product_screen.dart';  // Correct path for AddProductScreen
import '../widgets/app_bar_widget.dart';  // Import the custom AppBar

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  // This method increments the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Navigate to the "Add Product" screen
  void _goToAddProductScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddProductScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),  // Remove const keyword here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action to perform when the button is pressed
                _incrementCounter();
              },
              child: const Text('Increment Counter'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _goToAddProductScreen(context),
              child: const Text('Go to Add Product Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open the Add Product screen
          _goToAddProductScreen(context);
        },
        tooltip: 'Go to Add Product',
        child: const Icon(Icons.add),
      ),
    );
  }
}
