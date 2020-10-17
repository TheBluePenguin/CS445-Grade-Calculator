import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff007DB8),
            title: Text("Grade Calculator"),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1800),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row1(),
                  Padding(padding: EdgeInsets.all(10)),
                  Row2(),
                  Padding(padding: EdgeInsets.all(10)),
                  Row3(),
                  Padding(padding: EdgeInsets.all(10)),
                  Row4(),
                ],
              ),
            ),
          ),
        ),
      ),
    );

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

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Score:",
          style: new TextStyle(fontSize: 30.0),
        ),
        new Flexible(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input points earned',
            ),
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Out of:",
          style: new TextStyle(fontSize: 30.0),
        ),
        new Flexible(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input points possible',
            ),
          ),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Calculate Conventional Grade",
        style: new TextStyle(fontSize: 30.0),
      ),
      textColor: Colors.white,
      color: Color(0xff3A8340),
      onPressed: () {
        return AlertDialog(
          content: Text("Help"),
        );
      },
    );
  }
}

class Row4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Calculate Triage Grade",
        style: new TextStyle(fontSize: 30.0),
      ),
      textColor: Colors.white,
      color: Color(0xff3A8340),
      onPressed: () {},
    );
  }
}
