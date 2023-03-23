import 'dart:io';

import 'package:flutter/material.dart';

void main() { // main 스레드는 runApp을 실행시키고 종료 됨
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록이 됨)
  sleep(Duration(seconds: 3));
  print("main종료");
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
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("First App"),
            leading: Icon(Icons.menu),
          ),
          body: Text("HELLO"),
          floatingActionButton: FloatingActionButton(
            child: Text("button"),
            onPressed: () {
              print("버튼 클릭됨");
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(
                    Icons.access_alarm_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(
                    Icons.access_alarm_rounded,
                  ))
            ],
            backgroundColor: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
