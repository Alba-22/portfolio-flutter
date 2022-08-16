import 'package:flutter/material.dart';

import 'package:alba/app/core/components/layout/section_widget.dart';
import 'package:alba/app/core/models/tech.dart';

import 'skill_item_widget.dart';

class SkillsWidget extends StatelessWidget {
  final int crossAxisCount;
  final double mainAxisSpacing;

  const SkillsWidget({
    Key? key,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SectionWidget(
          title: "SKILLS",
          subtitle: "Algumas tecnologias e ferramentas que venho usando no meu dia a dia nos últimos anos.",
        ),
        const SizedBox(height: 60),
        GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: 0,
            childAspectRatio: 2,
          ),
          padding: EdgeInsets.zero,
          children: Tech.values.map((e) {
            return SkillItemWidget(
              name: e.renderName,
              svgPath: e.iconPath,
            );
          }).toList(),
        ),
      ],
    );
  }
}
