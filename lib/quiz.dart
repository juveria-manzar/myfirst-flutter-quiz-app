import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.answerQuestion,
    @required this.question,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        //... 'spread operator' list into values (to prevent list in a list)
        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
