import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static String id = "chat_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Chat Screen")));
  }
}
