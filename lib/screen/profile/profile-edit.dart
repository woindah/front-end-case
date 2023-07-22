import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/components/list-profile.dart';
import 'package:front_end/screen/profile/profile.dart';
import 'package:front_end/screen/profile/profile_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../authentication/forgot.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const ProfileAppBar(
              isDone: false,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/profile.png',
                        height: 240,
                        width: 240,
                      ),
                    ),
                    Positioned(
                      bottom: -4,
                      right: -4,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(), //<-- SEE HERE
                          padding: EdgeInsets.zero,
                          backgroundColor: ColorPallete.primaryBlue,
                          elevation: 0,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.0, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 12),
                    child: Text(
                      "Your Name",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black80,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: TextFormField(
                      controller: TextEditingController(text: "Lorem Ipsum"),
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
                        hintText: 'XXXXXXX',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 12),
                    child: Text(
                      "Email",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black80,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: TextFormField(
                      controller:
                          TextEditingController(text: "LoremIpsum@gmail.com"),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 12),
                    child: Text(
                      "Password",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: ColorPallete.black80,
                            fontSize: Sizes.bodym,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
                    child: TextFormField(
                      readOnly: true,
                      obscureText: true,
                      controller:
                          TextEditingController(text: "LoremIpsum@gmail.com"),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ForgotScreen());
                            Navigator.push(context, route);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: ColorPallete.black80,
                              elevation: 0,
                              padding: const EdgeInsets.only(left: 8),
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.transparent,
                              )),
                          child: const Text('Recovery Password'),
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
                        child: const Text("Save Now"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
