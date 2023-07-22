import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color.dart';

class ListProfile extends StatelessWidget {
  final String label;
  final String list;
  const ListProfile({super.key, required this.list, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.raleway(
              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: ColorPallete.black60,
            borderRadius: const BorderRadius.all(Radius.circular(14)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                list,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
              Icon(
                Icons.check,
                color: ColorPallete.greenColor,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
