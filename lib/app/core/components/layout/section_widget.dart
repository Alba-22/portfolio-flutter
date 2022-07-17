import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionWidget({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
            color: CColors.almostWhite,
            fontWeight: FWeight.bold,
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 5,
          width: 255,
          decoration: BoxDecoration(
            color: CColors.primary,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        const SizedBox(height: 10),
        if (subtitle != null)
          Text(
            subtitle!,
            style: GoogleFonts.inter(
              color: CColors.whiteGray,
              fontSize: 18,
            ),
          ),
      ],
    );
  }
}
