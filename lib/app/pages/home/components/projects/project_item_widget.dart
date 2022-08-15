import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:alba/app/core/components/layout/section_widget.dart';
import 'package:alba/app/core/models/tech.dart';

class ProjectItemWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<Tech> techs;
  final String imagePath;
  final String? redirectLink;

  const ProjectItemWidget({
    Key? key,
    required this.title,
    this.subtitle,
    required this.techs,
    required this.imagePath,
    this.redirectLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: redirectLink != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: () {
          if (redirectLink != null) {
            launchUrlString(redirectLink!);
          }
        },
        child: Stack(
          children: [
            imagePath.isNotEmpty
                ? Stack(
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            imagePath,
                            height: 650,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Color(0xFF0D1824),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D1824),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
            Container(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SectionWidget(
                    title: title,
                    subtitle: subtitle,
                  ),
                  // TODO: decidir se vai ter isso ou não
                  // const SizedBox(height: 16),
                  // SizedBox(
                  //   height: 32,
                  //   child: ListView.separated(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: techs.length,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return SvgPicture.asset(
                  //         techs[index].iconPath,
                  //         height: 32,
                  //       );
                  //     },
                  //     separatorBuilder: (BuildContext context, int index) {
                  //       return const SizedBox(width: 16);
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
