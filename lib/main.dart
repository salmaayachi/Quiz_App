import 'package:flutter/material.dart';

void main() {
  runApp(const MyCoolApp());
}

class MyCoolApp extends StatelessWidget {
  const MyCoolApp({Key? key}) : super(key: key);

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
            const Text('the question!'),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer3"),
              onPressed: null,
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
