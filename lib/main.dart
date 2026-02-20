import 'package:aichat/screens/chat_screen.dart';
import 'package:aichat/screens/inital_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {ChatScreen.id: (context) => const ChatScreen()},
      initialRoute: InitlScreen.id,
      debugShowCheckedModeBanner: false,

      title: 'AI Chat',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const InitlScreen(),
    );
  }
}
