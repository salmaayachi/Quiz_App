// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<MyCoolApp> createState() => _MyCoolAppState();
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(_questionIndex),
            ),
            RaisedButton(
              child: const Text("Answer1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: const Text("Answer2"),
              onPressed: () {
                print("answer 2 chosen ");
              },
            ),
            RaisedButton(
              child: const Text("Answer3"),
              onPressed: () => print('Answer 3 chosen'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
