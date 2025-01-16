class ShockSettingsInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;

  ShockSettingsInput({
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
