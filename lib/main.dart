import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Emoji'),
          centerTitle: true,
        ),
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int lpic = 2;
  int rpic = 2;
  void emojiface() {
    setState(() {
      lpic = Random().nextInt(5) + 1;
      rpic = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                emojiface();
              },
              child: Image.asset('images/pic$rpic.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                emojiface();
              },
              child: Image.asset('images/pic$lpic.png'),
            ),
          ),
        ],
      ),
    );
  }
}
