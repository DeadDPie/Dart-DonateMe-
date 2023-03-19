import 'package:flutter/material.dart';
import 'package:donate_me/screens/AuthorizationForm.dart';

void main() {
  runApp(const MainForm());
}

class MainForm extends StatelessWidget {
  const MainForm ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthorizationForm(),
    );
  }
}