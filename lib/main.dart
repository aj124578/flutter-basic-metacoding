import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

// 저장만 하면 화면이 자동으로 리로드 됨
class FirstApp extends StatelessWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(
        //   appBarTheme: AppBarTheme(
        //       color: Colors.white,
        //       titleTextStyle: TextStyle(color: Colors.black),
        //       iconTheme: IconThemeData(color: Colors.black)),
        // ),
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
                    fontFamily:"MavenPro"
                  )),
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
          ),
        ));
  }
}
