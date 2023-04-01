import 'dart:io';

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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/banner.png",
                    width: 350,
                    height: 430,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text("Needlework",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                      )),
                  const Text("is voguish",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Handicraft lessons from",
                    style: TextStyle(color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "the bset designers",
                    style: TextStyle(color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("버튼 클릭됨");
                    },
                    child: const Text("Get Started"),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(160, 55)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                      backgroundColor: MaterialStateProperty.all(Colors.black87),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}