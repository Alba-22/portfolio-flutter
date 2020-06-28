import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about.screen.dart';
import 'package:portfolio/views/appbar/custom.appbar.dart';
import 'package:portfolio/views/home/home.screen.dart';
import 'package:portfolio/views/projects/projects.screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AppStart extends StatefulWidget {
  @override
  _AppStartState createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> with TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 3,
      vsync: this
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(tabController: _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(tabController: _tabController),
          AboutScreen(tabController: _tabController),
          ProjectsScreen(tabController: _tabController)
        ],
        physics: MediaQuery.of(context).size.width < 400
        ? PageScrollPhysics()
        : NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
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
      ),
    );
  }
}