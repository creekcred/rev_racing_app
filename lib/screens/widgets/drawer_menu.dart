import 'package:flutter/material.dart';

/// A custom Drawer widget for navigating between app sections like Dashboard, Store, etc.
class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);  // Close the drawer
              // Navigate to the dashboard screen
            },
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Store'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to the store screen
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to the settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to the history screen
            },
          ),
        ],
      ),
    );
  }
}
