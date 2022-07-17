import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF7A401F).withOpacity(0.5),
            Color(0xFF121212).withOpacity(0.5),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(38),
          bottomLeft: Radius.circular(38),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gustavo Alba".toUpperCase(),
            style: GoogleFonts.inter(
              color: CColors.almostWhite,
              fontSize: 28,
              fontWeight: FWeight.bold,
            ),
          ),
          Text(
            "Mobile Developer",
            style: GoogleFonts.inter(
              color: CColors.almostWhite,
              fontSize: 18,
              fontWeight: FWeight.medium,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Desenvolvedor Mobile desde 2019, trabalhando principalmente com Flutter e liderando no planejamento, arquitetura, construção e publicação de diversas aplicações durante esse tempo. Tenho como principal foco a melhoria na arquitetura das aplicações que trabalho, criando projetos mais limpos, organizados e escaláveis.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.inter(
              color: CColors.whiteGray,
              fontSize: 16,
              fontWeight: FWeight.regular,
            ),
          ),
        ],
      ),
    );
  }
}
