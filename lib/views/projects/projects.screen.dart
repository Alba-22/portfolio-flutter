import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {

  final TabController tabController;

  const ProjectsScreen({Key key, this.tabController}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
    );
  }
}