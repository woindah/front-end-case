import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D6EFD),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Image.asset(
            'assets/image/logo.png',
            height: 200,
            width: 200,
          ),
        ),
      ])),
    );
  }
}
