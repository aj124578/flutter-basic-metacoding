import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("BottomSheet"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => _buildContainer(),
            isScrollControlled: true,
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildContainer() {
    print("inset :  ${MediaQuery.of(context).viewInsets.bottom}");
    print("padding :  ${MediaQuery.of(context).viewPadding.bottom}");

    return BottomSheet(
      onClosing: () {
        print("닫아짐");
      },
      builder: (context) => Container(
        padding: EdgeInsets.only(bottom: 300),
        color: Colors.yellow,
        child: Container(
          color: Colors.deepPurpleAccent,
          height: 200,
          child: TextField(),
        ),
      ),
    );
  }
}
