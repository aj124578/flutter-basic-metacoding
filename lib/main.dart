import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  // main 스레드는 runApp을 실행시키고 종료 됨
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록이 됨)
  // sleep(Duration(seconds: 3));
  // print("main종료");
}

// 저장만 하면 화면이 자동으로 리로드 됨
class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomeApp(),
        ),
      ),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var m = MediaQuery.of(context);
    print("넓이: ${m.size.width}");
    print("높이: ${m.size.height}");
    print("safearea: ${m.padding.top}");

    return Column(
      children: [
        Container(
          height: (m.size.height - 24) * 0.7,
          color: Colors.blue,
        ),
        Container(
          height: (m.size.height - 24) * 0.3,
          color: Colors.redAccent,
        ),
      ],
    );
  }
}
