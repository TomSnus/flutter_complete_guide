import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

void main(List<String> args) {
  runApp(MyApp());
}

var _questionIndex = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favorite color?',
        'answers': ['red', 'blue', 'green']
      },
      {
        'questionText': 'What is your favorite animal?',
        'answers': ['dog', 'cat', 'bird']
      },
      {
        'questionText': 'What  is your favorite number?',
        'answers': ['1', '2', '3']
      }
    ];
    void _answerQuestion() {
      setState(() {
        _questionIndex++;
        print('answer chosen');
      });
    }

    return MaterialApp(
        home: new Scaffold(
      appBar: AppBar(
        title: new Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          new Question(questions.elementAt(_questionIndex)['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
