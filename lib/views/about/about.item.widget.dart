import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {

  final String title;
  final String timeElapsed;
  final String description;

  const AboutItem({Key key, this.title, this.timeElapsed, this.description}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: AutoSizeText.rich(
        TextSpan(
          text: "$title ",
          style: TextStyle(
            color: Theme.of(context).primaryColor
          ),
          children: [
            TextSpan(
              text: "($timeElapsed): ",
              style: TextStyle(
                color: Theme.of(context).primaryColor
              )
            ),
            TextSpan(
              text: "$description",
              style: TextStyle(
                color: Colors.white
              )
            )
          ]
        ),
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width > 600
          ? 20
          : 14
        ),
      ),
    );
  }
}