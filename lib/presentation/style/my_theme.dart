import 'package:flutter/material.dart';

class MyTheme {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.black,
    primaryColor: const Color.fromRGBO(131, 197, 190, 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.red, selectionColor: Colors.cyan),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(172, 221, 231, 1),
        ),
      ),
      labelStyle: TextStyle(
        color: Color.fromRGBO(173, 185, 227, 1),
      ),
      iconColor: Color.fromRGBO(163, 121, 201, 1),
      focusColor: Color.fromRGBO(172, 221, 231, 1),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
      headline2: TextStyle(color: Colors.deepPurpleAccent),
      bodyText2: TextStyle(color: Colors.deepPurpleAccent),
      //Text input
      subtitle1: TextStyle(
        color: Color.fromRGBO(96, 171, 120, 1),
      ),
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
