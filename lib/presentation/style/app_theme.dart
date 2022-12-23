import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    primaryColor: const Color.fromRGBO(131, 197, 190, 1),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    textTheme: const TextTheme(
      //Title of the page
      headline3: TextStyle(
        color: Color.fromRGBO(173, 185, 227, 1),
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    primaryColor: const Color.fromRGBO(42, 89, 84, 1),
    scaffoldBackgroundColor: const Color.fromRGBO(102, 102, 102, 1),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Color.fromRGBO(173, 185, 227, 1),
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
