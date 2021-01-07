import 'package:flutter/material.dart';

import 'palette.dart';

class Styles {
  static TextStyle textHeading = TextStyle(
    color: Palette.primaryTextColor,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subHeading = TextStyle(
    color: Palette.primaryTextColor,
    fontSize: 36,
  );
  static TextStyle bodyText = TextStyle(
    color: Palette.primaryTextColor,
  );
  static TextStyle text = TextStyle(
    color: Palette.secondaryTextColor,
  );
  static TextStyle subText = TextStyle(
    color: Palette.greyColor,
  );
  static TextStyle date = TextStyle(
    color: Palette.greyColor,
    fontSize: 12.0,
    fontStyle: FontStyle.normal,
  );
}
