import 'package:flutter/material.dart';

import 'palette.dart';

class Styles {
  static TextStyle largeTitle = TextStyle(
    color: Palette.primaryTextColor,
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );
  static TextStyle title = TextStyle(
    color: Palette.primaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 27,
  );
  static TextStyle subTitle = TextStyle(
    color: Palette.primaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  static TextStyle headline = TextStyle(
    color: Palette.primaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  static TextStyle subHeadline = TextStyle(
    color: Palette.primaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static TextStyle body1 = TextStyle(
    color: Palette.secondaryTextColor,
    fontSize: 16,
  );
  static TextStyle body2 = TextStyle(
    color: Palette.neutralColor,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
  static TextStyle caption = TextStyle(
    color: Palette.greyColor,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static TextStyle date = TextStyle(
    color: Palette.greyColor,
    fontSize: 12.0,
    fontStyle: FontStyle.normal,
  );

  static TextStyle btnText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}
