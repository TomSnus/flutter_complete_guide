import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'questionText': 'What  is your favorite number?',
      'answers': [
        {'text': '1', 'score': 10},
        {'text': '2', 'score': 5},
        {'text': '3', 'score': 3},
        {'text': '4', 'score': 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
      print('answer chosen');
    });
    if (_questionIndex < _questions.length) {
      print('More questions');
    }
  }

  resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: new Text('My App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result(_totalScore, resetQuiz)));
  }
}
