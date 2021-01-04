import 'package:flutter/material.dart';

class AnswerText extends StatelessWidget {
  final String answerText;
  final Function onPressedCall;

  AnswerText({this.answerText, this.onPressedCall});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: onPressedCall,
      child: Text(
        answerText,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
    );
  }
}
