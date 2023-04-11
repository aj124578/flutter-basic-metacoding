import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/home_page.dart';

import '../model/user.dart';



class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("서브"),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("피드로 이동"),
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushNamed(context, "/feed", arguments:User( username: "ssar", password: "1234") );
          },

        ),
      ),
    );
  }
}
