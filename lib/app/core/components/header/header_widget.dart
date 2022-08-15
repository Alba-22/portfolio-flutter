import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social_media_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "images/profile_photo.jpeg",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: CColors.primary,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: CColors.blackBackground,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alba",
                            style: GoogleFonts.inter(
                              color: CColors.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mobile Developer",
                            style: GoogleFonts.inter(
                              color: CColors.almostWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  SocialMediaWidget(
                    image: "icons/social/linkedin_icon.svg",
                    urlToLaunch: RedirectLinks.linkedin,
                  ),
                  SizedBox(width: 12),
                  SocialMediaWidget(
                    image: "icons/social/github_icon.svg",
                    urlToLaunch: RedirectLinks.github,
                  ),
                  SizedBox(width: 12),
                  SocialMediaWidget(
                    image: "icons/social/twitter_icon.svg",
                    urlToLaunch: RedirectLinks.twitter,
                  ),
                  SizedBox(width: 12),
                  SocialMediaWidget(
                    image: "icons/social/discord_icon.svg",
                    urlToLaunch: RedirectLinks.discord,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
