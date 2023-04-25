import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/chat/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  static const id = '/chat';
  ChatScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Chat"),
      ),
    );
  }
}
