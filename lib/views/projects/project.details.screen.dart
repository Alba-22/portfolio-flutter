import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project.model.dart';

class ProjectDetailsScreen extends StatelessWidget {

  final ProjectModel project;

  const ProjectDetailsScreen({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: AutoSizeText(
          "${project.name}",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text(
            "Em construção",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}