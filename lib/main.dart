import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _buttonPressed = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _buttonPressed = 0;
      _totalScore = 0;
    });
  }

  void answerPressed(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _buttonPressed = _buttonPressed + 1;
    });
  }

  var questions = [
    {
      "questionText": "How is your day going? ",
      "answers": [
        {"text": "Good", "score": 5},
        {"text": "Bad", "score": 3},
        {"text": "Excellent", "score": 10},
      ],
    },
    {
      "questionText": "what's your fav food",
      "answers": [
        {"text": "North Indian", "score": 10},
        {"text": "Chinese", "score": 6},
        {"text": "Thai", "score": 4},
      ],
    },
    {
      "questionText": "What is the capital of Australia?",
      "answers": [
        {"text": "Sydney", "score": 0},
        {"text": "Canberra", "score": 10},
        {"text": "Melbourne", "score": 0},
      ],
    },
    {
      "questionText": "How many planets are in our solar system?",
      "answers": [
        {"text": "Nine", "score": 0},
        {"text": "Eight", "score": 10},
        {"text": "Seven", "score": 0},
      ],
    },
    {
      "questionText": 'What is the tallest mountain in the world?',
      "answers": [
        {"text": "Mount Everest", "score": 10},
        {"text": "K2", "score": 0},
        {"text": "Kangchenjunga", "score": 0},
      ],
    },
    {
      "questionText": 'What is the largest ocean in the world?',
      "answers": [
        {"text": "Pacific Ocean", "score": 10},
        {"text": "Atlantic Ocean", "score": 0},
        {"text": "Indian Ocean", "score": 0},
      ],
    },
    {
      "questionText": "What is the currency of Japan?",
      "answers": [
        {"text": "Dollars", "score": 0},
        {"text": "Yuan", "score": 0},
        {"text": "Yen (JPY)", "score": 10},
      ],
    },
    {
      "questionText": "Who painted the Mona Lisa?",
      "answers": [
        {"text": "Leonardo da Vinci", "score": 10},
        {"text": "Michelangelo", "score": 0},
        {"text": "Raphael", "score": 0},
      ],
    },
    {
      "questionText": "What is the smallest country in the world by land area?",
      "answers": [
        {"text": "Croatia", "score": 0},
        {"text": "Yemen", "score": 0},
        {"text": "Vatican City", "score": 10},
      ],
    },
    {
      "questionText": "How many bones are in the human body?",
      "answers": [
        {"text": "206", "score": 10},
        {"text": "207", "score": 0},
        {"text": "208", "score": 0},
      ],
    },
    {
      "questionText": "What is the boiling point of water in Celsius?",
      "answers": [
        {"text": "100", "score": 10},
        {"text": "99", "score": 0},
      ],
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: _buttonPressed < questions.length
              ? Quiz(questions, _buttonPressed, answerPressed)
              : Result(_totalScore, resetQuiz)),
    );
  }
}
