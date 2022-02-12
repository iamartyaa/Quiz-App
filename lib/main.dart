import 'package:flutter/material.dart';

//void main(){
//  runApp(const MyApp());
//}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void answerQuestion(){
      print('Answer Chosen!');
    }


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
            const Text('The question!'),
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
