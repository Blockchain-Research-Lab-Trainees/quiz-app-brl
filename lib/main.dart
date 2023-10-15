import 'package:flutter/material.dart';
import 'package:quiz_app/splash_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
const QuizApp({super.key});

@override

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      // home: SplashScreen(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: SplashScreen(),
      //Scaffold(
        // body: Container(
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [Colors.blue, Color.fromARGB(255, 116, 185, 180), Color.fromARGB(255, 49, 196, 209), Color.fromARGB(255, 103, 186, 106) , ],
          //   ),
          // ),
          //child: const SplashScreen(),
        );
  }
}
