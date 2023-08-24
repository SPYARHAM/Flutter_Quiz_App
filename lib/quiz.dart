import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  var buttonPressed;
  final Function answerPressed;

  // Quiz({
  //   @required this.questions,
  //   @required this.answerQuestion,
  //   @required this.questionIndex,
  // });
  Quiz(this.questions, this.buttonPressed, this.answerPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[buttonPressed]['questionText'] as String,
        ),
        SizedBox(height: 10),
        ...(questions[buttonPressed]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerPressed(answer['score']),
            answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
