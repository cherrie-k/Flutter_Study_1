import 'package:buttons/layout/main_layout.dart';
import 'package:buttons/screen/route_one_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // true 리턴: 팝 가능. false 리턴: 불가능
        final canPop = Navigator.of(context).canPop();
        // 시스템 뒤로가기 눌러도 뒤로 안가짐
        return canPop;
      },
      child: MainLayout(
        title: "Home Screen",
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop(); // 버튼 눌러도 뒤로 안가짐
            },
            child: Text("Maybe Pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();  // 에러
            },
            child: Text("Pop"),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteOneScreen(
                    number: 1234,
                  ),
                ),
              );
              print(result);
            },
            child: Text('Push'),
          ),
        ],
      ),
    );
  }
}
