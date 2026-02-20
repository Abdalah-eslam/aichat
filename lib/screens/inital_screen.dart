import 'package:aichat/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class InitlScreen extends StatelessWidget {
  const InitlScreen({super.key});
  static String id = "initial_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/OIP.webp"),
              ),
            ),
            child: Column(
              children: [
                const Spacer(flex: 2),
                const Text(
                  "Best personal               AI assistant",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 70,

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 6, 196, 234),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 70,

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 19, 130, 221),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 80,
                        alignment: Alignment.center,
                        child: const Text(
                          "3.5 Turbo",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Text(
                  'nice to meet you! how can i help you today?',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(double.infinity, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),

                      backgroundColor: Colors.white,
                    ),

                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ChatScreen.id);
                    },
                    child: Text(
                      'Lets start chatting',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
