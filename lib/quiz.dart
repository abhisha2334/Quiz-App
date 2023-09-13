import 'package:advanced_basics/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen=='question-screen'){
    screenWidget =const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 17, 44, 198),
                Color.fromARGB(255, 53, 67, 146)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            )),
            child: screenWidget),
      ),
    );
  }
}
