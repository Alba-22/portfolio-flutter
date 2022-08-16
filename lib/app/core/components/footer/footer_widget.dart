import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Desenhado por Samuel Ruiz e desenvolvido por Alba com Flutter",
      style: GoogleFonts.inter(
        fontSize: 14,
        color: CColors.whiteGray,
        fontWeight: FWeight.medium,
      ),
    );
  }
}
