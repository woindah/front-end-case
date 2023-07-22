import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/components/meta-title.dart';
import 'package:front_end/screen/authentication/login.dart';
import 'package:front_end/screen/authentication/register.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 32, left: 12, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: ColorPallete.black60,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                            ),
                            iconSize: 20,
                            color: ColorPallete.black100,
                            splashColor: Colors.transparent,
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => LoginScreen());
                              Navigator.push(context, route);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const MetaTitle(
                      title: 'Forgot Password',
                      desc: 'Enter your Email account to reset your password'),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 14.0,
                        height: 2.0,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorPallete.black60,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(14.0)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 12),
                        hoverColor: ColorPallete.primaryBlue,
                        hintText: 'XXXXXXXXXX',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: ColorPallete.primaryBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: const Text("Reset Password"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: ColorPallete.black80,
        elevation: 0,
        padding: const EdgeInsets.only(left: 8),
        side: const BorderSide(
          width: 1.0,
          color: Colors.transparent,
        )),
    onPressed: () {
      Route route =
          MaterialPageRoute(builder: (context) => const LoginScreen());
      Navigator.push(context, route);
    },
    child: const Text("Login"),
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(
        child: Column(
      children: [
        CircleAvatar(
          radius: 28,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.email,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text("Check Your Email"),
      ],
    )),
    content: Text(
      "We have send password recovery code in your email",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorPallete.black80),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
