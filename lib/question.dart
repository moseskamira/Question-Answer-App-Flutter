import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String questionText;

  QuestionText({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
