// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './display_questions.dart';
import './answers.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createElement
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var indexQuestions = 0;

  void ResetQuiz() {
    setState(() {
      indexQuestions = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      indexQuestions = indexQuestions + 1;
    });
  }

  var ListOfQuestions = [
    {
      "question1": "What is your favorite color?",
      "answers_questions": [
        "Blue",
        "Red",
        "Green",
        "Yellow",
      ],
    },
    {
      "question1": "What is your field of interest?",
      "answers_questions": ["STEM", "ARTS", "BUSINESS", "DRAMA", "SPORTS"]
    },
    {
      "question1": "What is your favorite past time?",
      "answers_questions": [
        "ANIME FAN",
        "Following ur Field of Interest",
        "Listening to Music",
        
      ]
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: indexQuestions < ListOfQuestions.length
            ? Quiz(indexQuestions, ListOfQuestions, answerQuestion)
            : Result(ResetQuiz),
      ),
    );
  }
}
