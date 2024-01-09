import 'package:buttons/layout/main_layout.dart';
import 'package:buttons/screen/route_two_screen.dart';
import 'package:flutter/material.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({
    this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Route ONE",
      children: [
        Text(
          'arguments: ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(567);
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
                settings: RouteSettings(
                  arguments: 788,
                ),
              ),
            );
          },
          child: Text('push'),
        ),
      ],
    );
  }
}
