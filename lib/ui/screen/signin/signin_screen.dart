import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/signin/signin_controller.dart';

class SignInScreen extends StatelessWidget {
  static const id = '/signIn';
  SignInScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignInController());

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
