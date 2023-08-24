import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "You did it",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "Score is :$totalScore",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resetHandler, child: Text("ResetQuiz"))
        ],
      ),
    );
  }
}
