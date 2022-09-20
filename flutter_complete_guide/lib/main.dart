import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  var name = 'Hoang Long';

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    // List
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Text(questions.elementAt(0)),
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text(name),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),

            // anonymount function (Chức năng ẩn danh)
            onPressed: () {
              this.name = 'Ngoc Ha';
              print('Hello World');
            },
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () => print('123'),
          ),
        ]),
      ),
    );
  }
}
