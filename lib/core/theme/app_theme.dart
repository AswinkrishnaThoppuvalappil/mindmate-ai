import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darktheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xFF0F172A),
    primaryColor: Color(0xFF7C3AED),
    appBarTheme: AppBarTheme(backgroundColor:Colors.transparent,elevation: 1,),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white,fontSize: 18))
  );
}
