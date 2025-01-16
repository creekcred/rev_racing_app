class SettingsFeedbackButton extends StatelessWidget {
  final String feedbackText;
  final VoidCallback onPressed;

  SettingsFeedbackButton({
    required this.feedbackText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(feedbackText),
    );
  }
}
