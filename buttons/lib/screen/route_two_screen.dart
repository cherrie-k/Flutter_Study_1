import 'package:buttons/layout/main_layout.dart';
import 'package:buttons/screen/route_three_screen.dart';
import 'package:flutter/material.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route TWO',
      children: [
        Text(
          'arguments: $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('pop!'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 10101,
            );
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              '/three',
            );
          },
          child: Text('Push Replacement'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => RouteThreeScreen(),
              ),
              (route) => route.settings.name == '/',
              // 홈스크린('/') 제외 모든 라우트를 라우트 스택에서 삭제
            );
          },
          child: Text('Push And Remove Until'),
        )
      ],
    );
  }
}
