import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {

  final TabController tabController;

  const AboutScreen({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
    );
  }
}