import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/gold.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 180,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8,
                ),
                child: Container(
                  height: 100,
                  color: Colors.black.withOpacity(0.1),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
