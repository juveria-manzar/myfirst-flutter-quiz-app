import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
