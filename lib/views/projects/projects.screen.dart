import 'package:flutter/material.dart';
import 'package:portfolio/models/project.model.dart';
import 'package:portfolio/views/projects/projects.card.dart';

class ProjectsScreen extends StatelessWidget {

  final TabController tabController;

  const ProjectsScreen({Key key, this.tabController}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width <= 400
                ? 1
                : MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 600
                ? 2
                : 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5
              ),
              itemBuilder: (context, index) {
                return ProjectsCard(project: projects[index]);
              },
              itemCount: projects.length,
            ),
          )
        ],
      ),
    );
  }
}