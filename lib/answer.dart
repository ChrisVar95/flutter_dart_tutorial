import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
