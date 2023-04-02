import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(FirstApp());
}

// 저장만 하면 화면이 자동으로 리로드 됨
class FirstApp extends StatelessWidget {
  FirstApp({Key? key}) : super(key: key);

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
            body: ListView(
              children: [
                ClipRRect(
                  child: Container(
                    height: 200,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ClipRRect(
                  // 사진 끝 모서리를 둥글게
                  child: Image.asset("assets/images/card.png"),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                ClipOval(
                  // 사진을 동그랗게 하고 싶을 때
                  child: Image.asset("assets/images/card.png"),
                ),
                ClipRect(
                  child: Align(
                    // 사진을 네모로 자르고 싶을 때
                    child: Image.asset("assets/images/card.png"),
                    heightFactor: 0.5,
                    alignment: Alignment.topCenter,
                  ),
                ),
                ClipPath(
                  child: Image.asset("assets/images/card.png"),
                  clipper: MyCliper(),
                ),
                ClipPath(
                  child: Image.asset(
                    "assets/images/card.png",
                    fit: BoxFit.fill,
                    height: 400,
                  ),
                  clipper: StarClipper(8),
                ),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ));
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
