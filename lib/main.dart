import 'package:flutter/material.dart';
import 'package:front_end/screen/authentication/login.dart';
import 'package:front_end/screen/onboarding/onboarding.dart';
import 'package:front_end/screen/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        // ignore: equal_keys_in_map
        '/': (context) => ProfileScreen(),
        '/onboarding': (context) => Onboarding(),
      },
    );
  }
}
