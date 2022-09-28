import 'package:flutter/material.dart';

class MyTheme {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.black,
    primaryColor: Color.fromRGBO(131, 197, 190, 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
      headline2: TextStyle(color: Colors.deepPurpleAccent),
      bodyText2: TextStyle(color: Colors.deepPurpleAccent),
      subtitle1: TextStyle(color: Colors.pinkAccent),
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
      headline2: TextStyle(color: Colors.deepPurpleAccent),
      bodyText2: TextStyle(color: Colors.deepPurpleAccent),
      subtitle1: TextStyle(color: Colors.pinkAccent),
    ),
  );
}
