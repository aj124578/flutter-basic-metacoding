
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

  final colorCodes = [600, 500, 300, 200, 100];
  final data = ['가', '나', '다', '라', '마'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
            return buildColumn(index);
          })
        ),
      ),
    );
  }

  Column buildColumn(int index) {
    return Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.cyan[colorCodes[index]],
                child: Text("데이터 : ${data[index]}"),
              ),
              Container(
                height: 5,
              )
            ],
          );
  }
}
