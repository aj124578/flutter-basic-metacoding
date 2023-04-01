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
  FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
            InkWell(
              onTap: () {
                print("inkWell 버튼 클릭 됨");
              },
              child: Container(
                child: Text("커스텀 버튼"),
                color: Colors.cyan,
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
