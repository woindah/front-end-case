import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color.dart';
import '../common/size.dart';

class MetaTitle extends StatelessWidget {
  final String title;
  final String desc;
  const MetaTitle({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                  color: ColorPallete.black100,
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.heading4),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: ColorPallete.black80,
                  fontWeight: FontWeight.normal,
                  fontSize: Sizes.bodym,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
