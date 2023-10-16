import 'package:flutter/material.dart';
import 'package:quiz_app/game_screen.dart';
import 'package:quiz_app/screeen1.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var zindascreen = 'start-screen';

  void switchScreen() {
    setState(() {
      zindascreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(switchScreen);

    if (zindascreen == 'questions-screen') {
      screenWidget = const Questions();
    }

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
                Color.fromARGB(255, 103, 186, 106),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:quiz_app/game_screen.dart';
// import 'package:quiz_app/screeen1.dart';


// class QuizApp extends StatefulWidget {
// const QuizApp({super.key});

//   @override
//   State<QuizApp> createState() => _QuizAppState();
// }

// class _QuizAppState extends State<QuizApp> {

//    var zindascreen = 'start-screen';

// //   Widget? zindascreen;

// //  @override
// //   void initState() { 
    
// //   // initState() is a method of class State and it is 
// //   //considered as an important lifecycle method in Flutter. 
// //   //initState() is called the only once and we use it for one-time initializations. 
// //   //Example : To initialize data that depends on the specific BuildContext.
// //   // To initialize data that need to execute before build()


// //     zindascreen = SplashScreen(switchScreen);
// //     super.initState();
// // // super is used to refer to the immediate parent of a class.
// // // When you create a custom StatefulWidget by extending StatefulWidget and override
// // // the initState method, you are providing your own logic that should be executed 
// // // when the widget is inserted into the widget tree.
// // // However, it's essential to make sure that the initialization logic in the 
// // //initState method of the parent class (i.e., StatefulWidget) is also executed. 
// // //To do this, you call super.initState() within your custom initState method.
// // // This ensures that any necessary setup or initialization that the parent 
// // //class performs in its initState method is not bypassed and is executed as well.

// //   }

// //   void switchScreen() {
// //     setState(() { 

// //     // setState() is a method of class State and it is used to
// //     // update the UI of the app based on the updated state object.
// //     // setState() is called every time the state object changes.

// //       zindascreen = const Questions();
// //     });
// //   }


// void switchScreen() {
//     setState(() {
//       zindascreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     Widget screenWidget = SplashScreen(switchScreen);

//     if (zindascreen == 'questions-screen') {
//       screenWidget = const Questions();
//     }

// @override

//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [

//               Colors.blue, 
//               Color.fromARGB(255, 116, 185, 180),
//               Color.fromARGB(255, 49, 196, 209),
//               Color.fromARGB(255, 103, 186, 106) ,

//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: screenWidget,
//         ),
//       ),
//     );
    
//   }
// }
// }