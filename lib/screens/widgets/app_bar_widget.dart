import 'package:flutter/material.dart';

/// A custom AppBar for consistent navigation across the app.
/// Includes the app title and icons for notifications and user profile.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  // Define the preferred size for the AppBar
  @override
  final Size preferredSize;

  // Constructor to initialize the preferred size of the app bar
  const AppBarWidget({Key? key}) 
      : preferredSize = Size.fromHeight(70.0), // Set the preferred size here
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Rev Racing"), // Title of the app bar
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),  // Icon for notifications
          onPressed: () {
            // Define the functionality for notifications here
          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle),  // Icon for user profile
          onPressed: () {
            // Define the functionality for profile settings here
          },
        ),
      ],
    );
  }
}
