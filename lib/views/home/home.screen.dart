import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final TabController tabController;

  const HomeScreen({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15, top: 50),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/profile.jpeg"
                ),
                radius: 120
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Gustavo Alba",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05
              ),
              child: Text(
                "Flutter Dev",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
                top: 20
              ),
              child: Text(
                "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}