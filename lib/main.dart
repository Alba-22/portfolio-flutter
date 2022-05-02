import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import 'app/pages/home/home_page.dart';

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
        primarySwatch: CColors.primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
