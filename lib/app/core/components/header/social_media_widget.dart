import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatefulWidget {
  final String image;
  final String urlToLaunch;

  const SocialMediaWidget({
    Key? key,
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
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: isHovering ? CColors.primary : CColors.blackBackground,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: SvgPicture.asset(
            widget.image,
          ),
        ),
      ),
    );
  }
}
