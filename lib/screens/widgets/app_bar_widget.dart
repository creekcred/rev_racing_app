import 'package:flutter/material.dart';

/// A custom AppBar for consistent navigation across the app.
/// This widget includes the app title and icons for notifications and user profile.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  // Define the preferred size for the AppBar.
  @override
  final Size preferredSize;

  // Constructor to initialize the preferred size of the app bar.
  // `key` is passed to the parent constructor to maintain consistency and widget uniqueness.
  const AppBarWidget({super.key})
      : preferredSize = Size.fromHeight(56.0);  // Pass the key to the parent constructor.

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Rev Racing"),  // Title displayed in the AppBar.
      actions: [
        // Icon button for notifications.
        IconButton(
          icon: Icon(Icons.notifications),  // Icon for notifications.
          onPressed: () {
            // Define the functionality for notifications (e.g., show a notification screen).
          },
        ),
        // Icon button for user profile.
        IconButton(
          icon: Icon(Icons.account_circle),  // Icon for user profile.
          onPressed: () {
            // Define the functionality for profile settings (e.g., open user profile).
          },
        ),
      ],
    );
  }
}

