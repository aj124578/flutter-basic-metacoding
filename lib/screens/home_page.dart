import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/sub_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("앱바 제목"),
      ),
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("서브로 이동"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SubPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
