import 'package:flutter/material.dart';

class DisplayQuestion extends StatelessWidget {
  String questions;

  DisplayQuestion(this.questions);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Text(
        questions,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
