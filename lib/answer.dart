// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  const Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: const Text("Answer1"),
        onPressed: selectHandler,
      ),
    );
  }
}
