import 'package:emoji/emojiclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'emojireaction.dart';

ReactionPredicter reactionPredicter = ReactionPredicter();

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
  void emojiface() {
    setState(() {
      reactionPredicter.getrandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    emojiface();
                  },
                  child: Image.asset(
                      'images/' + reactionPredicter.getimagrright() + '.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    emojiface();
                  },
                  child: Image.asset(
                      'images/' + reactionPredicter.getimagrleft() + '.png'),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                reactionPredicter.getreactionright(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Text(
                reactionPredicter.getreactionleft(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
