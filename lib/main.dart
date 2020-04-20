import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer pressed');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite Color? ',
      'What\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed:() {
                //..
                print('Answer Chosen 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
