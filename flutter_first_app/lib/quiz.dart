import 'package:flutter/material.dart';


class Quiz extends StatelessWidget {
 @override

 final List<Map<String, Object> > ListOfQuestions;
 int indexQuestions;
  Quiz{this.ListOfQuestions, this.indexQuestions};

  Widget build(BuildContext context) {
     return Column(
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
   
  }
}