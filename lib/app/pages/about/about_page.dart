import 'package:alba/app/core/components/app_bar.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
