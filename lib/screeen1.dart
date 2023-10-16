import 'package:flutter/material.dart';
import 'package:quiz_app/game_screen.dart';
//import 'package:quiz_app/game_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(void Function() switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(254, 255, 255, 255),
          ),

          const SizedBox(
            height: 80
            ),
          const Text(
            'Let\'s Quiz',
            style: TextStyle(
              color: Color.fromARGB(255, 251, 250, 251),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Questions()));
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 11, 11, 11),
              backgroundColor: const Color.fromRGBO(23, 225, 243, 1),
              shape: const StadiumBorder(
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              
            ),
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text('Let\'s Start'),
          )
        ],
      ),
    );
  }
}
