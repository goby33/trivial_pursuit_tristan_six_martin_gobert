import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    primaryColor: const Color.fromRGBO(131, 197, 190, 1),
    errorColor: const Color.fromRGBO(249, 65, 68, 1),
    scaffoldBackgroundColor: const Color.fromRGBO(237, 246, 249, 1),
    colorScheme: const ColorScheme.light(
      primary: Color.fromRGBO(131, 197, 190, 1),
      secondary: Color.fromRGBO(0, 109, 119, 1),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(131, 197, 190, 1),
      selectedItemColor: Color.fromRGBO(0, 109, 119, 1),
      unselectedItemColor: Color.fromRGBO(237, 246, 249, 1),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color.fromRGBO(131, 197, 190, 1),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(0, 109, 119, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(42, 89, 84, 1),
      selectedItemColor: Color.fromRGBO(0, 44, 48, 1),
      unselectedItemColor: Color.fromRGBO(102, 102, 102, 1),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color.fromRGBO(42, 89, 84, 1),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(0, 44, 48, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Color.fromRGBO(49, 121, 146, 1),
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