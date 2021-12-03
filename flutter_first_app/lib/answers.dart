import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  VoidCallback RecieveAnswers;
  String answerText;
  Answers(this.RecieveAnswers, this.answerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: RecieveAnswers,
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.yellowAccent,
        ),
      ),
    );
  }
}
