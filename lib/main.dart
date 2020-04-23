import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final question = const [
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
    if (_questionIndex < question.length) {
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
        body: _questionIndex < question.length
            ? Column(
                children: [
                  Question(
                    question[_questionIndex]['questionText'],
                  ),
                  //... 'spread operator' list into values (to prevent list in a list)
                  ...(question[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
