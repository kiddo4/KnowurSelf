import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

//void main() {
  //runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':'what\'s your favourite colour?',
      'answers': [{'text':'blue','score':1},{'text':'black','score':10},{'text':'yellow','score':3},{'text':'green','score':1}],
    },
    {
      'questionText':'what\'s your favourite animal?',
      'answers': [{'text':'Rabbit','score':2},{'text':'Dog','score':3},{'text':'ice cub','score':1},{'text':'snake','score':9}],
    },
    {
      'questionText':'who\'s your favourite programmer?',
      'answers': [{'text':'taiwo','score':1},{'text':'kiddo','score':1},{'text':'smith','score':1},{'text':'Blnr tech boy','score':8}],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz (){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length ) {
      print('more questions');

    }

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body:_questionIndex < _questions.length
            ?Quiz(_questions,_answerQuestion, _questionIndex)
            : Result(_totalScore, _resetQuiz)
      ),
    );
  }
}
