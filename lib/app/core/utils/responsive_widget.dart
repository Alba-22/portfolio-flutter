import 'package:flutter/material.dart';

import 'package:alba/app/core/utils/constants.dart';
import 'package:alba/app/core/utils/custom_colors.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < Breakpoints.mobileDesktop;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= Breakpoints.mobileDesktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= Breakpoints.mobileDesktop) {
          return Container(
            decoration: const BoxDecoration(
              gradient: CColors.backgroundGradient,
            ),
            child: Center(
              child: SizedBox(
                width: Breakpoints.mobileDesktop,
                child: desktop,
              ),
            ),
          );
        } else {
          return Container(
            decoration: const BoxDecoration(
              gradient: CColors.backgroundGradient,
            ),
            width: MediaQuery.of(context).size.width,
            child: mobile,
          );
        }
      },
    );
  }
}
