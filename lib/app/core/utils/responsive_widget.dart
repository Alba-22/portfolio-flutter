import 'package:alba/app/core/utils/constants.dart';
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

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < Breakpoints.mobileDesktop;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= Breakpoints.mobileDesktop;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= Breakpoints.mobileDesktop) {
            return Container(
              color: colors.background,
              child: Center(
                child: SizedBox(
                  width: Breakpoints.mobileDesktop,
                  child: desktop,
                ),
              ),
            );
          } else {
            return Container(
              color: colors.background,
              width: MediaQuery.of(context).size.width,
              child: mobile,
            );
          }
        },
      ),
    );
  }
}
