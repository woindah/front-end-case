import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/components/list-profile.dart';
import 'package:front_end/screen/profile/profile-edit.dart';
import 'package:front_end/screen/profile/profile_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            isDone: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assets/images/profile.png',
                  height: 120,
                  width: 120,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lorem Ipsum',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      fontSize: Sizes.bodyxl,
                      color: ColorPallete.black100,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => ProfileEditScreen());
                  Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: ColorPallete.primaryBlue,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.transparent,
                    )),
                child: const Text('Change Profile'),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 18.0, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListProfile(list: 'Lorem', label: 'First Name'),
                ListProfile(list: 'Ipsum', label: 'Last Name'),
                ListProfile(list: 'Sidoarjo, Indonesia', label: 'Location'),
                ListProfile(list: '82139488953', label: 'Mobile Number'),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
