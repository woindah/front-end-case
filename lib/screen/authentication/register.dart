import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/components/meta-title.dart';
import 'package:front_end/screen/authentication/login.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                          padding: const EdgeInsets.only(left: 8),
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
                      title: 'Register Account',
                      desc: 'Fill your details or continue with social media'),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: Text(
                      "Your Name",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black100,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
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
                        hintText: 'xxxxxxxx',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: Text(
                      "Email Address",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black100,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
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
                        hintText: 'loremipsum@gmail.com',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: Text(
                      "Passsword",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black100,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 14.0,
                        height: 2.0,
                      ),
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorPallete.black60,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(14.0)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 12),
                        hoverColor: ColorPallete.primaryBlue,
                        hintText: '*******',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: !_isObscure
                                ? const Icon(Icons.visibility_outlined)
                                : const Icon(Icons.visibility_off_outlined)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                          Route route = MaterialPageRoute(
                              builder: (context) => LoginScreen());
                          Navigator.push(context, route);
                        },
                        child: const Text("Sign Up"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: ColorPallete.black60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: 22,
                              width: 22,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text("Sign In With Google",
                                style: TextStyle(color: ColorPallete.black100)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have Account?'),
                  ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => LoginScreen());
                      Navigator.push(context, route);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        padding: const EdgeInsets.only(left: 8),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.transparent,
                        )),
                    child: const Text('Log In'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
