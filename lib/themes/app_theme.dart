import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,
      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
        centerTitle: true,
      ),
      //TextButtonTheme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),
      //FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: const StadiumBorder(),
          elevation: 0,
          //minimumSize: Size(170, 50),
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: primary,
      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.black);
}
