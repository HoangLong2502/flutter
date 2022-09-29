import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.tryParse('200'),
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: Color.fromARGB(255, 110, 110, 176),
            width: 1,
            style: BorderStyle.solid,
          )),
          backgroundColor: MaterialStateProperty.all(Colors.blue[800]),
          textStyle: MaterialStateProperty.all(
              TextStyle(color: Color(0xFF42A5F5), fontSize: 18)),
        ),
        child: Text(answerText),
        onPressed: () {
          selectHandler();
        },
      ),
    );
  }
}
