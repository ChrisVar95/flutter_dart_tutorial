import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

// Alternate syntax to call main and is the way to call
// on any functions with only one expression
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  final _questions = [
    // Map
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Fox', 'score': 3},
        {'text': 'Cat', 'score': 7},
        {'text': 'Dog', 'score': 5},
        {'text': 'Racoon', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favourite person?',
      'answers': [
        {'text': 'Mom', 'score': 7},
        {'text': 'Dad', 'score': 5},
        {'text': 'Sibling', 'score': 3},
        {'text': 'Best Friend', 'score': 1}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
