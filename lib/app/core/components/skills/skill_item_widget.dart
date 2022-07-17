// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillItemWidget extends StatelessWidget {
  final String name;
  final String svgPath;

  const SkillItemWidget({
    Key? key,
    required this.name,
    required this.svgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SvgPicture.asset(
              svgPath,
              width: 80,
              // height: 80,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FWeight.semiBold,
              color: CColors.almostWhite,
            ),
          ),
        ],
      ),
    );
  }
}
