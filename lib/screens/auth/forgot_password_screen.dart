import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ForgotPassword")),
      body: Center(
        child: Text("ForgotPassword Content"),
      ),
    );
  }
}
