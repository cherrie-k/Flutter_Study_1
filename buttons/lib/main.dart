import 'package:buttons/screen/home_screen.dart';
import 'package:buttons/screen/route_one_screen.dart';
import 'package:buttons/screen/route_three_screen.dart';
import 'package:buttons/screen/route_two_screen.dart';
import 'package:flutter/material.dart';

const HOME_ROUTE = '/';   // 이렇게 라우트들도 변수 따로 관리하는게 좋지 사실~~

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen()
      initialRoute: '/',
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        '/one' : (context) => RouteOneScreen(),
        '/two' : (context) => RouteTwoScreen(),
        '/three' : (context) => RouteThreeScreen(),
      },
    ),
  );
}
