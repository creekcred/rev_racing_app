import 'package:flutter/material.dart';

class ShockDeviceCard extends StatelessWidget {
  final String productName;
  final String status;
  final VoidCallback onTap;

  const ShockDeviceCard({
    Key? key,
    required this.productName,
    required this.status,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.settings),
        title: Text(productName),
        subtitle: Text("Status: $status"),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
