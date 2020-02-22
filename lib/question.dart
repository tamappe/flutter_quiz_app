import 'package:flutter/material.dart';

class Person {
  String name;
  int age;

  Person({this.name, this.age = 30});

  Person.veryOld(this.name) {
    age = 60;
  }
}

class Question extends StatelessWidget {
  final String questionText;

  Person person = Person.veryOld("aaaa");
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      color: Colors.yellow,
      child: Text(questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
