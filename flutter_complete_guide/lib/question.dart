import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          backgroundColor: Color(123456),
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      )
    );
  }
}
