// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<MyCoolApp> createState() => _MyCoolAppState();
}

class _MyCoolAppState extends State<MyCoolApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'Red', 'score': 5},
        {'Text': 'Green', 'score': 2},
        {'Text': 'White', 'score': 8},
      ],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'Text': 'Marwen', 'score': 6},
        {'Text': 'Fedi', 'score': 3},
        {'Text': 'Mahdi', 'score': 10},
        {'Text': 'Selma', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favourtie instructor',
      'answers': [
        {'Text': 'Max', 'score': 9},
        {'Text': 'Wided', 'score': 3},
        {'Text': 'radhaa', 'score': 6},
        {'Text': 'Youssef', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions !");
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
