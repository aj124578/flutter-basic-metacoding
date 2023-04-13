import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container( // 자식의 크기에 맞춰짐. 하지만 정렬을 하면 크기로 인한 제약이 없어짐
          color: Colors.green,
          child: Align(child: Text("안녕"), alignment: Alignment.bottomLeft,),
        ),

    );
  }
}
