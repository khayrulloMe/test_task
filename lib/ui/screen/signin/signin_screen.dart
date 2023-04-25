import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const id = '/signIn';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Log In"),
      ),
    );
  }
}
