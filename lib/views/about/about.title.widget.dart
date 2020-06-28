import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutTitle extends StatelessWidget {

  final String title;

  const AboutTitle({Key key, this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AutoSizeText(
        "$title",
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: MediaQuery.of(context).size.width > 600
          ? 28
          : 25,
          fontWeight: FontWeight.w900
        ),
      ),
    );
  }
}