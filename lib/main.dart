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
      'questionText':
          'You’ve just been on your first overseas trip to Bali. Although you got food poisoning, and didn’t get on that well with your mates, you: ',
      'answers': [
        {'text': 'Black', 'score': '10'},
        {'text': 'Red', 'score': '5'},
        {'text': 'Green', 'score': '3'},
        {'text': 'White', 'score': '1'}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Cat', 'score': '8'},
        {'text': 'Dog', 'score': '1'},
        {'text': 'Parrot', 'score': '4'},
        {'text': 'Puppy', 'score': '2'}
      ],
    },
    {
      'questionText': 'Who\'s your favourite Teacher ?',
      'answers': [
        {'text': 'Joey', 'score': '1'},
        {'text': 'Monica', 'score': '2'},
        {'text': 'Pheobe', 'score': '10'},
        {'text': 'Rachel', 'score': '2'}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
              : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
