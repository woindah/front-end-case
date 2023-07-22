import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/components/meta-title.dart';
import 'package:front_end/screen/authentication/forgot.dart';
import 'package:front_end/screen/authentication/login.dart';
import 'package:front_end/screen/authentication/register.dart';
import 'package:front_end/screen/profile/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                      title: 'OTP Verification',
                      desc:
                          'Please check your email to see the verification code'),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: Text(
                      "OTP Code",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black100,
                            fontSize: Sizes.bodyl,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 0),
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              height: 2.0,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              filled: true,
                              fillColor: ColorPallete.black60,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(14.0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 12),
                              hoverColor: ColorPallete.primaryBlue,
                              hintText: '0',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              height: 2.0,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              filled: true,
                              fillColor: ColorPallete.black60,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(14.0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 12),
                              hoverColor: ColorPallete.primaryBlue,
                              hintText: '0',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              height: 2.0,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              filled: true,
                              fillColor: ColorPallete.black60,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(14.0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 12),
                              hoverColor: ColorPallete.primaryBlue,
                              hintText: '0',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              height: 2.0,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              filled: true,
                              fillColor: ColorPallete.black60,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(14.0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 12),
                              hoverColor: ColorPallete.primaryBlue,
                              hintText: '0',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                              builder: (context) => ProfileScreen());
                          Navigator.push(context, route);
                        },
                        child: const Text("Verify"),
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
