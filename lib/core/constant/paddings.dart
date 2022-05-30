import 'package:flutter/cupertino.dart';

class Paddings {
  Paddings._privateConstructor();
  static final Paddings _instance = Paddings._privateConstructor();
  factory Paddings() {
    return _instance;
  }

  static EdgeInsets appPadding = const EdgeInsets.all(20);
}
