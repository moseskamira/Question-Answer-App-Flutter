import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_two/answer.dart';

import 'question.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questionsList = [
    {
      'question': 'What is your favorite color ?',
      'answers': ['Blue', 'Green', 'Yellow'],
    },
    {
      'question': 'What\'s your favorite animal ?',
      'answers': ['Cat', 'Rabbit', 'Donkey'],
    },
  ];

  void _answerQuestion() {
    // _questionIndex > questionsList.length?

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'QuestAnsApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Question Answer App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: Center(
          child: _questionIndex >= questionsList.length
              ? Text(
                  "You Are Done, Thank You!",
                  textAlign: TextAlign.center,
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    QuestionText(
                        questionText: questionsList[_questionIndex]
                            ['question']),
                    ...(questionsList[_questionIndex]['answers']
                            as List<String>)
                        .map((myAnswer) {
                      return AnswerText(
                          answerText: myAnswer, onPressedCall: _answerQuestion);
                    }).toList(),
                  ],
                ),
        ),
      ),
    );
  }
}
