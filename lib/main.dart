import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          'Chemistry Jokes',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Dosis',
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var jokeNumber = 1;

  void numberGen() {
    setState(() {
      jokeNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: Image.asset('images/joke$jokeNumber.png')),
            SizedBox(height: 20.0),
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  numberGen();
                },
                color: Colors.teal[300],
                splashColor: Colors.teal[200],
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Dosis',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
