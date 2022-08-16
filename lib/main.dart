import 'package:flutter/material.dart';

import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/custom_scroll_behavior.dart';

import 'app/pages/home/home_page.dart';

void main() {
  runApp(const Portifolio());
}

class Portifolio extends StatelessWidget {
  const Portifolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gustavo Alba",
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CColors.primarySwatch,
      ),
      home: const HomePage(),
    );
  }
}
