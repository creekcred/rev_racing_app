import 'package:flutter/material.dart';

/// A custom slider to adjust shock settings (e.g., compression, rebound).
class ShockSettingsSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const ShockSettingsSlider({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),  // Label for the slider
        Slider(
          value: value,
          min: 0.0,
          max: 100.0,
          divisions: 100,
          onChanged: onChanged,  // Callback to update the value
        ),
      ],
    );
  }
}
