import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/home_page.dart';

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("앱바 제목"),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("홈으로 이동"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
