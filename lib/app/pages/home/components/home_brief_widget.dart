import 'package:alba/app/core/components/social_media_widget.dart';
import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class DesktopHomeBriefWidget extends StatelessWidget {
  const DesktopHomeBriefWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColors>()!;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: colors.border,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              "assets/images/profile_photo.jpeg",
              height: 160,
              width: 160,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gustavo Alba",
              style: TextStyle(
                fontSize: 36,
                color: colors.primaryText,
                fontWeight: FWeight.bold,
              ),
            ),
            Text(
              "I'm a software developer, with focus on mobile development and UI/UX design",
              style: TextStyle(
                fontSize: 20,
                color: colors.secondaryText,
                fontWeight: FWeight.medium,
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                SocialMediaWidget(
                  text: "LinkedIn",
                  image: "assets/icons/social/linkedin_icon.svg",
                  urlToLaunch: RedirectLinks.linkedin,
                ),
                SizedBox(width: 8),
                SocialMediaWidget(
                  text: "GitHub",
                  image: "assets/icons/social/github_icon.svg",
                  urlToLaunch: RedirectLinks.github,
                ),
                SizedBox(width: 8),
                SocialMediaWidget(
                  text: "E-mail",
                  image: "assets/icons/social/email_icon.svg",
                  urlToLaunch: RedirectLinks.email,
                ),
                SizedBox(width: 8),
                SocialMediaWidget(
                  text: "Discord",
                  image: "assets/icons/social/discord_icon.svg",
                  urlToLaunch: RedirectLinks.discord,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
