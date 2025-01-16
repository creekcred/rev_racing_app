import 'package:flutter/material.dart';

// Main method to start the app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rev Racing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rev Racing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
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

// AddProductScreen (new screen)
class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // Navigate back to the home screen
          },
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
