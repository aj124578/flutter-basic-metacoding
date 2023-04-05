import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(FirstApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => buildAlertDialog(context),
          );
        },
        child: Text("버튼"),
      ),
    );
  }

//   CupertinoAlertDialog buildAlertDialog(BuildContext context) {
//     return CupertinoAlertDialog(
//       title: Text("다이어로그"),
//       content: Text("내용입니다..........."),
//       actions: [
//         TextButton(onPressed: () {
//
//         }, child: Text("적용"))
//       ],
//     );
//   }
}

CupertinoDialogAction buildAlertDialog(BuildContext context) {
  return CupertinoDialogAction(

    child: Container(
      height: 300,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Text("오케잉"),
              onTap: () {
                print("오케잉이 클릭 됨");
              },
            ),
          ),
          Expanded(child: Text("error"))
              
        ],
      ),
    )

  );
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
