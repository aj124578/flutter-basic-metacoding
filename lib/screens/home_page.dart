import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/page1.dart';
import 'package:flutter_lab/screens/page2.dart';
import 'package:flutter_lab/screens/page3.dart';
import 'package:flutter_lab/screens/page4.dart';

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

  var _selectdIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectdIndex,
        children: <Widget>[
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectdIndex,
      onTap: (value) {
        setState(() {
        _selectdIndex = value;
        });
        print("value : ${value}");
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: "business"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      ],

    );
  }
}
