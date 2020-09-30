import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grade Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Just calculate",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grade Calculator"),
        ),
        body: Center(
          child: Text("This app is more broken than the debate"),
        ),
      ),
    );
  }
}

class ScoreInput extends StatefulWidget {
  @override
  _ScoreInputState createState() => _ScoreInputState();
}

class _ScoreInputState extends State<ScoreInput> {
  @override
  Widget build(BuildContext context) {}
}

String calculateConventionalGrade(int score, int outOf) {
  double value = (score / outOf) * 100;
  if (value < 60) return 'F failing';
  if (value >= 60) return 'D poor';
  if (value >= 70) return 'C average';
  if (value >= 80) return 'B good';
  if (value >= 90) return 'A exellent!';
  return "Not a valid grade";
}

String calculateTriageGrade(int score, int outOf) {
  double value = (score / outOf) * 100;
  if (value >= (7 / 15 * 100)) return 'F failing';
  if ((7 / 15 * 100) < value && value >= (2 / 3 * 100)) return 'D poor';
  if ((2 / 3 * 100) < value && value >= (5 / 6 * 100)) return 'C average';
  if ((5 / 6 * 100) < value && value <= (17 / 18 * 100)) return 'B good';
  if ((17 / 18 * 100) < value) return 'A exellent!';
  return "Not a valid grade";
}
