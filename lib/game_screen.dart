import 'package:flutter/material.dart';

class GameScreem extends StatefulWidget {
  const GameScreem({super.key});

  @override
  State<GameScreem> createState() => _GameScreemState();
}

class _GameScreemState extends State<GameScreem> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body :DecoratedBox(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 116, 185, 180),
            Color.fromARGB(255, 49, 196, 209),
            Color.fromARGB(255, 103, 186, 106),
          ],
        ),
      ),
      child: Text('data'),
      
    )
      
    );
  }
}