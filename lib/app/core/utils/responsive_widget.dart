import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // If our width is more than 1100 then we consider it a desktop
        if (constraints.maxWidth >= 1100) {
          return Container(
            color: CColors.blackBackground,
            child: Center(
              child: Container(
                color: CColors.blackBackground,
                width: 1100,
                child: desktop,
              ),
            ),
          );
        }
        // Or less then that we called it mobile
        else {
          return Container(
            color: CColors.blackBackground,
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: mobile,
          );
        }
      },
    );
  }
}
