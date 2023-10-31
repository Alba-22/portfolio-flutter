import 'package:alba/app/core/components/app_bar.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Container(),
      desktop: const Column(
        children: [
          SizedBox(height: 24),
          CustomAppBar(),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
