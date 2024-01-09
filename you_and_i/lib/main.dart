import 'package:flutter/material.dart';
import 'package:you_and_i/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        // themedata의 최상단엔 기본 폰트 설정 가능
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontFamily: 'parisienne',
            fontSize: 80.0,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
