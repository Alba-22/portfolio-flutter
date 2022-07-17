import 'package:flutter/material.dart';

import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/custom_scroll_behavior.dart';

import 'app/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gustavo Alba",
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CColors.primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
