import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1483C2),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/gambar1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/Vector.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: Image.asset(
                'assets/image/gambar2.png',
                height: 560,
                width: 560,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
