import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue,
        width: 300,
        height: 600,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1 / 3, // 200 / 600
          child: Container(
            // 크기가 없으면 부모의 크기만큼 확장됨. 예외 (위치를 지정해주면 됨)
            // 크기가 있어도 위치를 지정하지 않으면 부모의 크기만큼 확장
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

// StatelessWidget 위젯은 한번 그려지면 다시 안그려짐.
// StatefulWidget 데이터 변경시 다시 그림이 그려짐. Wideget build 함수가 재실행 됨
class FirstApp extends StatelessWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NewApp(),
      ),
    );
  }
}
