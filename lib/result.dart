import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  final VoidCallback resetScore;

  Result(this.score, this.resetScore);

  String get resultPhrase {
    String resultText;
    if (score <= 2) {
      resultText =
          'You have to watch and read course material again. \nYour score is $score';
    } else if (score <= 4) {
      resultText =
          'You did well, but you could do it better.\nYour score is $score ';
    } else {
      resultText =
          'Well done! You can move further through this course!\nYour score is $score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resetScore,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red[100]),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
          child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Try again',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              )),
        )
      ],
    );
  }
}
