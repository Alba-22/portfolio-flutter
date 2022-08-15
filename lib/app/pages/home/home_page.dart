import 'package:flutter/material.dart';

import 'package:alba/app/core/components/footer/footer_widget.dart';
import 'package:alba/app/core/components/header/header_widget.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';

import 'components/bio/bio_widget.dart';
import 'components/posts/desktop_posts_widget.dart';
import 'components/posts/mobile_posts_widget.dart';
import 'components/projects/projects_widget.dart';
import 'components/skills/skills_widget.dart';

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
        desktop: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              const SizedBox(height: 60),
              const ProjectsWidget(),
              const SizedBox(height: 60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
              ),
              // const SizedBox(height: 50),
              // const DesktopPostsWidget(),
              const SizedBox(height: 50),
              const FooterWidget(),
              const SizedBox(height: 25),
            ],
          ),
        ),
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const ProjectsWidget(),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const BioWidget(),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const SkillsWidget(
                  crossAxisCount: 2,
                  mainAxisSpacing: 50,
                ),
              ),
              // const SizedBox(height: 100),
              // const MobilePostsWidget(),
              const SizedBox(height: 50),
              const FooterWidget(),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
