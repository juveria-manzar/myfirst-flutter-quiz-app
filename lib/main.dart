import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favourite Color ? ',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': ['Cat', 'Dog', 'Puppy', 'Parrot']
    },
    {
      'questionText': 'Who\'s your favourite Teacher ?',
      'answers': ['Joey', 'Phoebe', 'Rachel', 'Monica']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _question.length) {
      print('We have more questions');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  question: _question,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
