import 'package:flutter/material.dart';
import 'package:portfolio/views/app.start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gustavo Alba",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFF9640),
        backgroundColor: Color(0xFF282036),
        fontFamily: "FiraCode"
      ),
      home: AppStart(),
    );
  }
}