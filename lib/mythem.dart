import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mythem {
  static Color backhome = Color.fromRGBO(233, 234, 239, 1.0);
  static Color appbar = Color.fromRGBO(90, 211, 131, 1.0);
  static Color dark = Color.fromRGBO(45, 54, 85, 1.0);
  static Color white = Color.fromRGBO(250, 250, 250, 1.0);
  static Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static Color backcontinernumber = Color.fromRGBO(222, 246, 230, 1.0);
  static Color gray = Color.fromRGBO(100, 102, 101, 1.0);

  static ThemeData ligh = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: white,
      selectedItemColor: appbar,
      unselectedItemColor: gray,
    ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: appbar,
        iconTheme: IconThemeData(color: black),
      ),
      colorScheme: ColorScheme(
          secondary: black,
          surface: white,
          onSurface: white,
          brightness: Brightness.light,
          onBackground: backcontinernumber,
          error: Colors.red,
          background: backhome,
          primary: backhome,
          onPrimary: appbar,
          onError: Colors.red,
          onSecondary: appbar),
      textTheme: TextTheme(
        headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: black),
          headline4: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: black),
        headline1: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.black)
      ));
  static ThemeData darkmode = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: dark,
        selectedItemColor: appbar,
        unselectedItemColor: gray,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: dark,
        iconTheme: IconThemeData(color: white),
      ),
      colorScheme: ColorScheme(
          secondary: white,
          surface: white,
          onSurface: white,
          brightness: Brightness.dark,
          onBackground: backcontinernumber,
          error: Colors.red,
          background: dark,
          primary: dark,
          onPrimary: dark,
          onError: Colors.red,
          onSecondary: appbar),
      textTheme: TextTheme(
          headline2: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: white),
          headline4: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: white),
          headline1: TextStyle(
              fontSize: 20, color: white, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color:white)
      ));
}
