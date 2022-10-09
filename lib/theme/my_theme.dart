import 'package:flutter/material.dart';

class MyTheme {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.black,
    primaryColor: Color.fromRGBO(131, 197, 190, 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.red,
      selectionColor: Colors.cyan
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      labelStyle: TextStyle(color: Colors.purple),
      iconColor: Colors.purple,
      focusColor: Colors.red,
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
