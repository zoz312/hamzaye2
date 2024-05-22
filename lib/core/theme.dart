import 'package:flutter/material.dart';

class mytheme {
  static final mytheme insatance = mytheme();
  ThemeData light = ThemeData.light().copyWith(
      //textTheme: TextTheme(titleLarge: TextStyle(color:Colors.black,fontSize: 25)),
      cardColor: Color(0xffD84012),
      backgroundColor: Color(0xffFFF2BC),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color:Color(0xffFFF2BC),fontSize: 20 ),
        backgroundColor: Color(0xffD84012)));
  ThemeData dark = ThemeData.dark().copyWith(
    cardColor: Color.fromARGB(255, 79, 79, 79),
      backgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),
        backgroundColor: Color.fromARGB(255, 79, 79, 79)),
       //  textTheme: TextTheme(titleMedium: TextStyle(color:Colors.white,fontSize: 25)),
      );
}
