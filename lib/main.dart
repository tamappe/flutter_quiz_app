import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'Waht\'s is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  _answerQuestion();
                }
            ),
          ],
        ),
      ),
    );
  }
}
