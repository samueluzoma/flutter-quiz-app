import 'package:flutter/material.dart';
import 'package:nextlevel/data/questions.dart';
import 'package:nextlevel/questions_screen.dart';
import 'package:nextlevel/start_screen.dart';
import 'package:nextlevel/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  //(1) Widget? activeScreen;
  // @override
  // //initializing initstate
  // void initState() {
  //   activeScreen = StartScreen(switchScreen); //...implement innitState
  //   super.initState();
  // }

  // (2) you can use this method to switch screen
  var activeScreen = 'start-screen';
//selecting answers

  List<String> selectedAnswer = [];

  //function to implement next screen when button is pressed
  switchScreen() {
    setState(() {
      // (1) activeScreen = const QuestionsScreen();

      //(2) use this to implement above instead of using initstate function
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answers) {
    selectedAnswer.add(answers);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        //selectedAnswer = [];
        activeScreen = 'result-screen';
      });
    }
  }

  //Function to restart the quiz and emptying the list
  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(constext) {
    // (3) Widget screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    //c(4) four is below and probably the most efficient.

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 130, 43, 211),
                Color.fromARGB(255, 108, 41, 159),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:
              screenWidget, // <-(3 & 4) // (1)-> activeScreen, was the formal
          // (2) activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
