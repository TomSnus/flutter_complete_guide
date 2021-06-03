import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  var answerText;

  Answer(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)), onPressed: selectHandler, child: Text(answerText)),
    );
  }
}