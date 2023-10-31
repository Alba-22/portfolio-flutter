import 'package:alba/app/core/components/app_bar.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'components/home_brief_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Container(),
      desktop: const Column(
        children: [
          SizedBox(height: 24),
          CustomAppBar(),
          SizedBox(height: 48),
          DesktopHomeBriefWidget(),
        ],
      ),
    );
  }
}
