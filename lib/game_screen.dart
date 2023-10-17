import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/dummy_question.dart';
//import 'package:quiz_app/models/quiz_questions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override

  _QuestionsState createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {

  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
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
            child: Container(
              margin: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(currentQuestion.text,  style: GoogleFonts.lato(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                  const SizedBox(height: 20),
                  ...currentQuestion.getShuffledAnswers()
                      .map((answer) => Answer(answertext: answer, onTap: answerQuestion))
                      .toList(),
                  // Answer(answertext: currentQuestion.answers[0], onTap: () {}),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.answertext,
    required this.onTap,
  }) : super(key: key);

  final String answertext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 1, 21, 16),
        // padding: const EdgeInsets.symmetric(
        //   // horizontal: 70,
        //   vertical: ,
        //  ),
        shape: const StadiumBorder(),
      ),
      child: Text(answertext , textAlign: TextAlign.center,),
    );
  }
}
