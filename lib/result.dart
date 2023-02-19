import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 14) {
      resultText = 'You are confident and passionate';
    } else if (resultScore >= 10) {
      resultText = 'You are a grounded and loyal person';
    } else if (resultScore >= 6) {
      resultText = 'You are adventurous and unique';
    } else {
      resultText = 'You\'re quiet and loving';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Restart Quiz'),
            //Testing out different buttons and how to style a button
            /*
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(225, 255, 135, 255)),
                  foregroundColor: MaterialStateProperty.all(Colors.blue))
          */
          ),
          // TextButton(onPressed: resetQuiz, child: Text("AWOOGA")),
          // OutlinedButton(onPressed: resetQuiz, child: Text("nooooo"))
        ],
      ),
    );
  }
}
