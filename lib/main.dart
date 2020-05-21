import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything')),
        backgroundColor: Colors.cyan.shade700,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  var arr = [
    'Am I Intelligent?',
    'Do I have money?',
    'Will I pass the exam?',
    'Am I lazy?'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              index = Random().nextInt(4);
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
        SizedBox(
          child: Divider(
            color: Colors.cyan.shade900,
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          child: ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.cyan.shade700,
            ),
            title: Text(
              arr[index],
              style: TextStyle(
                color: Colors.cyan.shade900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
