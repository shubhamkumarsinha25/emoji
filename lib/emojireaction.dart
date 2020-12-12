import 'dart:math';

import 'package:emoji/emojiclass.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ReactionPredicter{
  int _lpic=1;
  int _rpic=1;
  List<EmojiReaction> _emojireaction=[
    EmojiReaction('pic1','laughfing'),
    EmojiReaction('pic2','smiling'),
    EmojiReaction('pic3','laugh'),
    EmojiReaction('pic4','imaging'),
    EmojiReaction('pic5','loving'),
  ];
  void getrandom()
  {
    _lpic = Random().nextInt(5) ;
    _rpic = Random().nextInt(5) ;
  }
  String getimagrleft()
  {
    return _emojireaction[_lpic].image;
  }
  String getimagrright()
  {
    return _emojireaction[_rpic].image;
  }
  String getreactionleft()
  {
    return _emojireaction[_lpic].reaction;
  }
  String getreactionright()
  {
    return _emojireaction[_rpic].reaction;
  }
}