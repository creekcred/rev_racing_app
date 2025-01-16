import 'package:flutter/material.dart';

/// A button to submit feedback about shock settings.
class SettingsFeedbackButton extends StatelessWidget {
  // Callback when feedback is submitted
  final VoidCallback onPressed;

  const SettingsFeedbackButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,  // Executes the passed callback when pressed
      child: Text('Submit Feedback'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),  // Customize color
      ),
    );
  }
}
