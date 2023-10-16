import 'package:flutter/material.dart';
import 'package:quiz_app/screeen1.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
@override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [

              Colors.blue, 
              Color.fromARGB(255, 116, 185, 180),
              Color.fromARGB(255, 49, 196, 209),
              Color.fromARGB(255, 103, 186, 106) ,

              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const SplashScreen(),
        ),
      ),
    );
    
  }
}
