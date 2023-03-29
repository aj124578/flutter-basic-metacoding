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
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blueGrey,
            alignment: Alignment(1.0, 1.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "안녕", style: TextStyle(color: Colors.white)),
                  TextSpan(text: "방가~~~~~~~~~~~~~~~~~~~~~~~~~~~#ㅇㄴㅁ시ㅏㅓㄴ아ㅣ선ㅇ마ㅣ섬;ㅏㅣㄴ어시ㅏㅁㄴ어시ㅏㅁㅇ너시ㅏㅁㄴ어시ㅏ;ㅇㅁ너;사ㅣ"),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
