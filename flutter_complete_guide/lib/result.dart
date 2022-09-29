import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultScore {
    var resultText = 'Your total Score: ';
    if (score <= 8) {
      resultText = 'You are awsome and innocent !';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            resultScore,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              child: Text('Restart Quizz !!!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              onPressed: () {
                resetQuiz();
              }),
          TextButton(
              onPressed: () {
                print('oulineButotn');
              },
              style: TextButton.styleFrom(primary: Colors.orange),
              child: Text('Text button (outlineButton)')),
          OutlinedButton(
              onPressed: () {
                print('border-button');
              },
              child: Text('outlineButton (border-button)')),
        ],
      ),
    );
  }
}
