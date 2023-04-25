import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const id = '/chat';
  const ChatScreen({Key? key}) : super(key: key);

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
