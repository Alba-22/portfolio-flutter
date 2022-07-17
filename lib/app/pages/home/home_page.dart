import 'package:alba/app/core/components/skills/skills_widget.dart';
import 'package:flutter/material.dart';

import 'package:alba/app/core/components/bio/bio_widget.dart';
import 'package:alba/app/core/components/header/header_widget.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        desktop: Column(
          children: [
            HeaderWidget(),
            const SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500,
                  child: BioWidget(),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: SkillsWidget(
                    crossAxisCount: 4,
                    mainAxisSpacing: 50,
                  ),
                ),
              ],
            )
          ],
        ),
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(),
              const SizedBox(height: 20),
              Container(
                child: BioWidget(),
              ),
              const SizedBox(height: 60),
              SkillsWidget(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
