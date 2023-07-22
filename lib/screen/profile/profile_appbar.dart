import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_end/common/color.dart';
import 'package:front_end/common/size.dart';
import 'package:front_end/screen/authentication/login.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAppBar extends StatelessWidget {
  final bool isDone;
  const ProfileAppBar({super.key, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => LoginScreen());
              Navigator.push(context, route);
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), //<-- SEE HERE
                padding: EdgeInsets.all(14),
                backgroundColor: ColorPallete.black60,
                elevation: 0),
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
              size: 16,
            ),
          ),
          Text(
            'Profile',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: Sizes.bodyxl,
                fontWeight: FontWeight.w700,
                color: ColorPallete.black100,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => LoginScreen());
              Navigator.push(context, route);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: ColorPallete.primaryBlue,
                elevation: 0,
                padding: const EdgeInsets.only(left: 8),
                side: const BorderSide(
                  width: 1.0,
                  color: Colors.transparent,
                )),
            child: isDone ? Text('Done') : null,
          ),
        ],
      ),
    );
  }
}
