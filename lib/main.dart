import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator',
      home: Scaffold(
        appBar: AppBar(title: Text('Grade Calculator')),
        body: Center(
            child: Container(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          padding: EdgeInsets.all(30),
          child: Text(""),
        )),
      ),
    );
  }
}

String calculateGrade(int score, int outOf, int value) {
  double value = (score / outOf) * 100;
  if (value <= 60) return 'F failing';
  if (value >= 60) return 'D poor';
  if (value >= 70) return 'C average';
  if (value >= 80) return 'B good';
  if (value >= 90) return 'A exellent!';
  return "Not a valid grade";
}
