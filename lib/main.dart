import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(FirstApp());
}

// StatelessWidget 위젯은 한번 그려지면 다시 안그려짐.
// StatefulWidget 데이터 변경시 다시 그림이 그려짐. Wideget build 함수가 재실행 됨
class FirstApp extends StatefulWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  var isCheck = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black)),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Icon(Icons.arrow_back),
            title: Text("Credit Card",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    fontFamily: "MavenPro")),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  SizedBox(width: 10),
                ],
              )
            ],
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("인증하기 클릭됨");
                    setState(() {// 데이터에 연관이 있는 위젯과 그 하위 위젯을 다시 그려라.
                      isCheck = false;
                    });
                    print("isCheck : ${isCheck}");
                  },
                  child: Text(
                    "인증하기",
                  )),
              AbsorbPointer(
                absorbing: isCheck,
                child: ElevatedButton(
                  onPressed: () {
                    print("전송하기 클릭됨");
                  },
                  child: Text("전송하기"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
