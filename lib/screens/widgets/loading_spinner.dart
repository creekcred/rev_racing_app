import 'package:flutter/material.dart';

/// A loading spinner to show during data fetching or processing operations.
class LoadingSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),  // Default loading spinner
    );
  }
}
