import 'package:alba/app/core/components/app_bar.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
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
