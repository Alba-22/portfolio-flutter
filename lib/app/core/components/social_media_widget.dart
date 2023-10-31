import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatefulWidget {
  final String text;
  final String image;
  final String urlToLaunch;

  const SocialMediaWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.urlToLaunch,
  }) : super(key: key);

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColors>()!;
    return InkWell(
      onTap: () async {
        if ((await canLaunchUrl(Uri.parse(widget.urlToLaunch)))) {
          await launchUrl(Uri.parse(widget.urlToLaunch));
        }
      },
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: colors.cardBackground,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              widget.image,
              height: 20,
              width: 20,
              color: isHovering ? colors.main : colors.primaryText,
            ),
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 16,
                color: isHovering ? colors.main : colors.primaryText,
                fontWeight: FWeight.medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
