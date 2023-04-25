import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  static const id = '/profile';
  ProfileScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
    );
  }
}
