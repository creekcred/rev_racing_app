class ShockSettingsSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  ShockSettingsSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Slider(
          value: value,
          min: 0.0,
          max: 10.0,
          onChanged: onChanged,
        ),
        Text("${value.toStringAsFixed(1)}"),
      ],
    );
  }
}
