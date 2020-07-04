import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about.screen.dart';
import 'package:portfolio/views/appbar/custom.appbar.dart';
import 'package:portfolio/views/bottom_nav_bar/bottom.nav.bar.dart';
import 'package:portfolio/views/home/home.screen.dart';
import 'package:portfolio/views/projects/projects.screen.dart';

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
          ProjectsScreen(tabController: _tabController),
          AboutScreen(tabController: _tabController),
        ],
        physics: MediaQuery.of(context).size.width < 400
        ? PageScrollPhysics()
        : NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavBar()
    );
  }
}