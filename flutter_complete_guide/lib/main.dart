import 'package:flutter/material.dart';

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

  var name = 'Hoang Long';

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

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
          Text(questions[_questionIndex]),
          ElevatedButton(
            child: Text(name),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),

            // anonymount function (Chức năng ẩn danh)
            onPressed: () {
              this.name = 'Ngoc Ha';
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
