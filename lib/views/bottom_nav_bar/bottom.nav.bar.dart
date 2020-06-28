import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavBar extends StatelessWidget {

  void urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } 
    else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async => urlLauncher("https://www.twitter.com/zAlba22"),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10
              ),
              child: Image.asset(
                "assets/images/twitter.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async => urlLauncher("https://www.github.com/Alba-22"),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10
              ),
              child: Image.asset(
                "assets/images/github.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async => urlLauncher("https://www.linkedin.com/in/alba22"),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10
              ),
              child: Image.asset(
                "assets/images/linkedin.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}