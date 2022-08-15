import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/formatters.dart';

class PostItemWidget extends StatelessWidget {
  final String? imagePath;
  final String title;
  final String description;
  final DateTime publicationDate;

  const PostItemWidget({
    Key? key,
    this.imagePath,
    required this.title,
    required this.description,
    required this.publicationDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 320,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: CColors.whiteGray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: CColors.almostWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FWeight.bold,
                    color: CColors.almostBlack,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: const Color(0xFF363636),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Text(
                      formatDate(publicationDate),
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: const Color(0xFF5E5E5E),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
