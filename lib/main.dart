import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  answerQuestion();
                }
            ),
          ],
        ),
      ),
    );
  }
}
