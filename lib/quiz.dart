import 'package:adv_basices/data/questions.dart';
import 'package:adv_basices/que.dart';
import 'package:adv_basices/result.dart';
import 'package:flutter/material.dart';
import 'package:adv_basices/Welcome_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //answer of question from Que
  List<String> Selectedanswer = [];
  //
  // widget variable contains the Widgets
  // Widget? activescreen;
  //
  var activescreen = 'welcomepage';
  //run first
  // @override
  // void initState() {
  //   // initialize the variable
  //   activescreen = Welcomepage(StartQuiz: switchscreen);
  //   super.initState();
  // }

  //
  // function for switch screens
  void switchscreen() {
    setState(() {
      //value change here
      activescreen = 'Oue';
    });
  }

  void restartQuiz() {
    setState(() {
      Selectedanswer = [];
      activescreen = 'Oue';
    });
  }
// fuction that add anser in Selectedanswer

  void chooseAnswer(String answer) {
    Selectedanswer.add(answer);
    if (Selectedanswer.length == questions.length) {
      setState(() {
        activescreen = 'Result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Welcomepage(StartQuiz: switchscreen);

    if (activescreen == 'Oue') {
      screenWidget = Que(onSelect: chooseAnswer);
    }
    if (activescreen == 'Result-screen') {
      screenWidget = Result(
        choosenAnswers: Selectedanswer,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quize App",
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 2, 48, 71),
                Color.fromARGB(255, 33, 158, 188),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
