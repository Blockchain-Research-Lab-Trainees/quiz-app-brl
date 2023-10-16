import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return Scaffold(
      
      body: Center(
        
        child: DecoratedBox(
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
          child: SizedBox(
            
              width: double.infinity,
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('Question 1' , style: TextStyle(fontSize: 24 , color: Colors.white),),
             const SizedBox(height: 20),
             Answer(answertext: 'Answer 1' , onTap: (){},),
             Answer(answertext: 'Answer 1' , onTap: (){},),
             Answer(answertext: 'Answer 1' , onTap: (){},),
             Answer(answertext: 'Answer 1' , onTap: (){},),
          ],
            
              ),
            ),
        )
      )
      );
  }
}


//     return  SizedBox(
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//            const Text('Question 1' , style: TextStyle(fontSize: 24 , color: Colors.white),),
//            const SizedBox(height: 20),
//            Answer(answertext: 'Answer 1' , onTap: (){},),
//            Answer(answertext: 'Answer 1' , onTap: (){},),
//            Answer(answertext: 'Answer 1' , onTap: (){},),
//            Answer(answertext: 'Answer 1' , onTap: (){},),
//         ],
    
//       ),
//     );
//   }
// }

class Answer extends StatelessWidget {
  const Answer({
    super.key, required this.answertext, required this.onTap,
  });

  final String answertext ;
  final void Function() onTap ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(

         
        foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 1, 21, 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        shape: const StadiumBorder(),
        
      ),
      child: Text(answertext),
    );
  }
}
