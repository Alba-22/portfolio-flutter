import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project.model.dart';
import 'package:portfolio/views/projects/opened.image.screen.dart';
import 'package:url_launcher/url_launcher.dart';


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
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05
        ),
        child: ListView(
          children: [
            Text(
              "Sobre o projeto:",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: MediaQuery.of(context).size.width > 600
                ? 18
                : 13
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: Text(
                "${project.description}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width > 600
                  ? 17
                  : 12
                ),
              ),
            ),
            Container(
              height: 2,
              color: Theme.of(context).primaryColor
            ),
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width <= 400
                ? 1
                : MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 700
                ? 2
                : MediaQuery.of(context).size.width >= 700 && MediaQuery.of(context).size.width < 1000
                ? 3
                : 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => OpenedImageScreen(
                    image: project.images[index],
                  ))),
                  child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor,
                      image: DecorationImage(
                        image: AssetImage(project.images[index]),
                        fit: BoxFit.cover
                      )                      
                    ),
                  ),
                );
              },
              itemCount: project.images.length,
            ),
            project.googlePlayLink != null && project.googlePlayLink != ""
            ? GestureDetector(
              onTap: () => urlLauncher(project.googlePlayLink),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 50,
                child: Image.asset(
                  "assets/images/google-play-badge.png"
                ),
              ),
            )
            : Container()
          ],
        ),
      ),
    );
  }

  void urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } 
    else {
      throw 'Could not launch $url';
    }
  }
  
}