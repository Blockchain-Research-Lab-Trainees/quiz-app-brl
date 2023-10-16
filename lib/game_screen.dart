import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
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
                Text(currentQuestion.text,  style: const TextStyle(fontSize: 24, color: Colors.white)),
                const SizedBox(height: 20),
                Answer(answertext: currentQuestion.answers[0], onTap: () {}),
                Answer(answertext: currentQuestion.answers[1], onTap: () {}),
                Answer(answertext: currentQuestion.answers[2], onTap: () {}),
                Answer(answertext: currentQuestion.answers[3], onTap: () {}),
              ],
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
        foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 1, 21, 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 70,
          vertical: 12,
        ),
        shape: const StadiumBorder(),
      ),
      child: Text(answertext),
    );
  }
}
