// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
//void main(){
//  runApp(const MyApp());
//}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print('Answer $questionIndex Chosen! ');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Snake', 'Rabbit', 'Tiger', 'Lion'],
      },
      {
        'questionText': 'What\'s your favourite singer?',
        'answers': ['B', 'R', 'G', 'W'],
      },
      {
        'questionText': 'What\'s your favourite dash?',
        'answers': ['A', 'B', 'C', 'D'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answerQuestion,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
