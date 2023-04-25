import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/signup/signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  static const id = '/signUp';
  SignUpScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Registration"),
      ),
    );
  }
}
