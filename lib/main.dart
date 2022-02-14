// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_guide/result.dart';
import './quiz.dart';

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
  var questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Wolf', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite singer?',
      'answers': [
        {'text': 'B', 'score': 10},
        {'text': 'R', 'score': 5},
        {'text': 'G', 'score': 3},
        {'text': 'W', 'score': 1}
      ],
    },
  ];
  int questionIndex = 0;
  int totalScore=0;
  
  void answerQuestion(int score) {
    setState(() {
      questionIndex += 1;
      totalScore+=score;
    });
    print(questionIndex);
  }

  void resetQuiz(){
    setState(() {
      questionIndex=0;
      totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(answerQuestion, questions, questionIndex)
            : Result(resetQuiz,totalScore),
      ),
    );
  }
}
