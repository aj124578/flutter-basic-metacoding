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
          body: Column( // Container를 Column으로 감싸면 children 배열안에 들어가게 됨
            children: [
              Expanded( // 남는 공간 끝까지 확장
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height : 200,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height : 60,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height : 60,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height : 60,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                  height : 60,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurpleAccent,
                  height : 60,
                ),
              ),
            ],
          ),

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
