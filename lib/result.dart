import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback resetQuiz;
  Result(this.resetQuiz,this.result);

  String get resultPhrase {
    String resultText;
    if (result <= 8) {
      resultText = 'You are innocent!';
    } else if (result <= 12) {
      resultText = 'Pretty Likable!';
    } else {
      resultText = 'You are Strange!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetQuiz, child: const Text('Reset')),
        ],
      ),
    );
  }
}
