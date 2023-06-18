import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8){
      resultText = 'you are awesome and innocent!';

    } else if (resultScore <= 12) {
      resultText = 'pretty likeable!';
    }
    else if (resultScore <= 16) {
      resultText = 'you are ..... strange?';
    }
    else {
      resultText = 'you are so bad lol';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text('Restart Quiz'),
              onPressed: resetHandler,
            ),
          ],
        )
      ,);
  }
}
