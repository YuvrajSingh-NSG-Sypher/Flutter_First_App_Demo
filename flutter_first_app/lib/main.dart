// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './display_questions.dart';
import './answers.dart';

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

  void answerQuestion() {
    setState(() {
      indexQuestions = indexQuestions + 1;
    });
  }

  var ListOfQuestions = [
    {
      "question1": "What is your favorite color?",
      "answers_questions": ["Blue", "Red", "Green", "Yellow"],
    },
    {
      "question1": "What is your field of interest?",
      "answers_questions": ["STEM", "ARTS", "BUSINESS"]
    },
    {
      "question1": "What is your favorite past time?",
      "answers_questions": ["ANIME FAN", "ANIME", "Binging Anime"]
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: indexQuestions < ListOfQuestions.length
            ? Column(
                children: [
                  DisplayQuestion(
                    ListOfQuestions[indexQuestions]["question1"] as String,
                  ),
                  ...(ListOfQuestions[indexQuestions]['answers_questions']
                          as List<String>)
                      .map((answers_questions) {
                    return Answers(answerQuestion,
                        answers_questions); // ... to ensure we add values of the particluar to the new list and not the list to a list(2-D List could have been formed otheriwse)
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                "You did it!",
                style: TextStyle(fontSize: 45),
                textAlign: TextAlign.center,
              )),
      ),
    );
  }
}
