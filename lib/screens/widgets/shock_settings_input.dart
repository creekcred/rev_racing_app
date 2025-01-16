import 'package:flutter/material.dart';

/// A custom input field for entering numeric shock settings (e.g., preload, PSI).
class ShockSettingsInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const ShockSettingsInput({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),  // Numeric input
      decoration: InputDecoration(
        labelText: label,  // Label for the input field
        border: OutlineInputBorder(),
      ),
    );
  }
}
