import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void onRestart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeWiget;
    if (activeScreen == 'start-screen') {
      activeWiget = StartScreen(switchScreen);
    }
    if (activeScreen == 'questions-screen') {
      activeWiget = QuestionsScrean(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'result-screen') {
      activeWiget =
          ResultScreen(choosenAnswers: selectedAnswers, onRestart: onRestart);
    }
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 40, 54, 138),
                  Colors.indigo
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: activeWiget)));
  }
}
