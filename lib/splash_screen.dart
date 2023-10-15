import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
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
      child: Padding(
        padding: const EdgeInsets.only(
            top: 40.0, left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/quiz-logo.png'),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Quiz App',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
           const  SizedBox(
              height: 80,
            ),
            
            OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:const Color.fromARGB(255, 103, 186, 106),
                  side: const BorderSide(color: Colors.white, width: 2.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                icon: const Icon(Icons.arrow_forward),
                label: const Text(
                  'Lets Play !!',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
            //  DecoratedBox(
            //   decoration: BoxDecoration(
            //     gradient: RadialGradient(
            //       center: Alignment(-0.5, -0.6),
            //       radius: 0.15,
            //       colors: <Color>[
            //         Color(0xFFEEEEEE),
            //         Color(0xFF111133),
            //       ],
            //       stops: <double>[0.9, 1.0],
            //     ),
            //   ),
            // // ),
            // SizedBox(
            //   child: Image(image: AssetImage('assets/images/quiz-logo.png' ),),

            // )
          ],
        ),
      ),
    ));
  }
}
