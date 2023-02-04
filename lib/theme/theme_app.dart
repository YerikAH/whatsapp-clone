import 'package:flutter/material.dart';

class ThemeApp{
  static const Color white = Color(0xffffffff);
  static const Color green = Color(0xff075e56);
  static const Color greenPale = Color(0xff10CE5F);
  // static const Color greenLight = Color(0xff)
  static final ThemeData configTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: white,
    appBarTheme:  const AppBarTheme(
      backgroundColor: green,
      foregroundColor: white,
    )

  );
}
