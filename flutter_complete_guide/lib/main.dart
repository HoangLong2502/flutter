import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //ghi đè
  @override
  // Khai báo State con để kết nối 2 State
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // State<MyApp> để khai báo rằng MyAppState là State con của MyApp

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Bird', 'score': 3},
        {'text': 'Rabbit', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Min', 'score': 5},
        {'text': 'Mux', 'score': 3},
        {'text': 'Mox', 'score': 1}
      ]
    }
  ];

  var name = 'Hoang Long';

  var _questionIndex = 0;

  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('Van nho hon do dai mang');
      setState(() {
        _questionIndex = _questionIndex + 1;
        _totalScore = _totalScore + score;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Color(0xFFFF9000),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(
                child: Result(_totalScore, _resetQuiz),
              ),
      ),
    );
  }
}
