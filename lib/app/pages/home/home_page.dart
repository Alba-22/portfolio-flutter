import 'package:flutter/material.dart';

import 'package:alba/app/core/components/bio/bio_widget.dart';
import 'package:alba/app/core/components/header/header_widget.dart';
import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        desktop: Container(
          color: CColors.blackBackground,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              HeaderWidget(),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: BioWidget(),
                  ),
                  Expanded(child: Container()),
                ],
              )
            ],
          ),
        ),
        mobile: Container(
          color: CColors.blackBackground,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              HeaderWidget(),
              Row(
                children: [
                  Expanded(child: BioWidget()),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
