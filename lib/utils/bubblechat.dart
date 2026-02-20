import 'package:flutter/material.dart';

class Bubblechat extends StatelessWidget {
  const Bubblechat({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(32),
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "welcome to the AI chat bot! How can I assist you today? Feel free to ask me anything or share your thoughts. I'm here to help and provide information on a wide range of topics. Let's have a great conversation!",
              style: TextStyle(
                fontWeight: FontWeight.w600,

                fontSize: 18,
                color: Colors.grey[600],
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          left: -10,
          child: Container(
            margin: EdgeInsets.all(20),
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
