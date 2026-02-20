import 'package:flutter/material.dart';

class TextfieldChat extends StatefulWidget {
  const TextfieldChat({super.key});

  @override
  State<TextfieldChat> createState() => _TextfieldChatState();
}

class _TextfieldChatState extends State<TextfieldChat> {
  final TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            key: formKey,
            controller: controller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a message";
              }
              return null;
            },
            maxLines: null,
            decoration: InputDecoration(
              hintText: "Type your message here...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(onPressed: () {}, icon: Icon(Icons.photo_library_outlined)),
        IconButton(
          onPressed: () {
            // Handle send button press
          },
          icon: Icon(Icons.send_outlined),
        ),
      ],
    );
  }
}
