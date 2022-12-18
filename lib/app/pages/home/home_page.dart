import 'package:alba/app/core/components/social_media_widget.dart';
import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: CColors.backgroundGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset(
                "images/profile_photo.jpeg",
                height: 200,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Gustavo Alba",
              style: TextStyle(
                color: CColors.primary,
                fontSize: 60,
                fontWeight: FWeight.bold,
              ),
            ),
            const Text(
              "Mobile Developer",
              style: TextStyle(
                color: CColors.whiteGray,
                fontSize: 24,
                fontWeight: FWeight.medium,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialMediaWidget(
                  image: "assets/icons/social/linkedin_icon.svg",
                  urlToLaunch: RedirectLinks.linkedin,
                ),
                SizedBox(width: 12),
                SocialMediaWidget(
                  image: "assets/icons/social/github_icon.svg",
                  urlToLaunch: RedirectLinks.github,
                ),
                SizedBox(width: 12),
                SocialMediaWidget(
                  image: "assets/icons/social/twitter_icon.svg",
                  urlToLaunch: RedirectLinks.twitter,
                ),
                SizedBox(width: 12),
                SocialMediaWidget(
                  image: "assets/icons/social/discord_icon.svg",
                  urlToLaunch: RedirectLinks.discord,
                ),
              ],
            ),
            const Spacer(),
            const Text(
              "Website under construction",
              style: TextStyle(
                color: CColors.whiteGray,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
