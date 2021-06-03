import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

var questionIndex = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    void answerQuestion() {
      setState(() {
        questionIndex++;
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
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(onPressed: answerQuestion, child: Text('Blue')),
          ElevatedButton(onPressed: answerQuestion, child: Text('Red')),
          ElevatedButton(onPressed: answerQuestion, child: Text('Green'))
        ],
      ),
    ));
  }
}
