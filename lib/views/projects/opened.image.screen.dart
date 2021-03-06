import 'package:flutter/material.dart';

class OpenedImageScreen extends StatelessWidget {

  final String image;
  final String type;

  const OpenedImageScreen({Key key, this.image, this.type = "height"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(
                image
              ),
              fit: type == "height"
              ? BoxFit.fitHeight
              : BoxFit.fitWidth
            )
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 10),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}