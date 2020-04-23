import 'package:flutter/material.dart';

class MainTheme {
  static const kPrimaryColor = Colors.lightBlueAccent;
  static const kSecondColor = Colors.white;
  static const kTextColor = Colors.black;

  static const kTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 45,
    color: kSecondColor,
  );
  static const kSubtitleTextStyle = TextStyle(
    fontSize: 18,
    color: kSecondColor,
  );
  static const kItemTextStyle = TextStyle(
    color: kTextColor,
    fontSize: 20,
  );
}
