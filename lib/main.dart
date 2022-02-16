// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
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
