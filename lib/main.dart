import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/feed_page.dart';
import 'package:flutter_lab/screens/home_page.dart';
import 'package:flutter_lab/screens/sub_page.dart';

void main() {
  runApp(FirstApp());
}

// StatelessWidget 위젯은 한번 그려지면 다시 안그려짐.
// StatefulWidget 데이터 변경시 다시 그림이 그려짐. Wideget build 함수가 재실행 됨
class FirstApp extends StatelessWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (BuildContext context) => HomePage(),
        "/sub": (BuildContext context) => SubPage(),
        "/feed": (BuildContext context) => FeedPage(),
      },
    );
  }
}
