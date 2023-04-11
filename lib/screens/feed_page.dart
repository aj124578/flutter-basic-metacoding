import 'package:flutter/material.dart';
import 'package:flutter_lab/model/user.dart';


class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text("피드 ${user.username}"),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("홈으로 이동"),
          onPressed: () {
            // Navigator.pop(context);
            // Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false,); // 앱에서 로그아웃
          },

        ),
      ),
    );
  }
}
