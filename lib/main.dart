import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(FirstApp());
}

// StatelessWidget 위젯은 한번 그려지면 다시 안그려짐.
// StatefulWidget 데이터 변경시 다시 그림이 그려짐. Wideget build 함수가 재실행 됨
class FirstApp extends StatefulWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  var isCheck = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                      child: Container(
                        alignment: Alignment(0, -0.5),
                        child: Text(
                          "GetInThere",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        color: Colors.blue,
                        height: 400,
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        buildTextFormField("Username"),
                        buildTextFormField("Password"),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  TextFormField buildTextFormField(String hint) {
    return TextFormField(
                      decoration: InputDecoration(
                        hintText: hint,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: Colors.black)
                        ),
                        fillColor: Colors.grey[300],
                        filled: true
                      ),
                    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200),
          ),
          child: Container(
            alignment: Alignment(0, -0.5),
            child: Text(
              "GetInThere",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            color: Colors.blue,
            height: 500,
          ),
        ),
        TextFormField(),
      ],
    );
  }
}
