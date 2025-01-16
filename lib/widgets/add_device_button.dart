class AddDeviceButton extends StatelessWidget {
  final VoidCallback onPressed;

  AddDeviceButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Add Device"),
    );
  }
}
