import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler; // Specify the correct function type
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 47, 150, 182),
        ),
        onPressed: selectHandler, // Assign the function directly
        child: Text(
          answerText,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
