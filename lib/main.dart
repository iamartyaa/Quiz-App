// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

//void main(){
//  runApp(const MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}  
  
class MyAppState extends State<MyApp>{  
  
  var questionIndex=0;

  void answerQuestion()
  {
    setState(() {
      questionIndex+=1;
    });
    
    print('Answer $questionIndex Chosen! ');
  }
  

  @override
  Widget build(BuildContext context) {
    
    List<String> questions = [
      'What\'s your favourite color?',
      'Whats\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}