import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project.model.dart';
import 'package:portfolio/views/projects/project.details.screen.dart';

class ProjectsCard extends StatelessWidget {

  final ProjectModel project;

  const ProjectsCard({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetailsScreen(
          project: project
        )));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, bottom: 60),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
              ),
              image: project.mainImage != null
              ? DecorationImage(
                image: AssetImage(
                  "${project.mainImage}"
                ),
                fit: BoxFit.cover
              )
              : null
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                ),
                color: Color(0xFF372B4A)
              ),
              child: Center(
                child: AutoSizeText(
                  "${project.name}",
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 600
                    ? 17
                    : 20
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}