import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../di/di.dart';
import 'header_widget.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isHoveringTheme = false;

  @override
  Widget build(BuildContext context) {
    final isOnHome = ModalRoute.of(context)?.settings.name == "/";
    final colors = Theme.of(context).extension<CustomColors>()!;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (!isOnHome)
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/");
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      border: Border.all(
                        width: 1,
                        color: colors.border,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        "assets/images/profile_photo.jpeg",
                        height: 160,
                        width: 160,
                      ),
                    ),
                  ),
                )
              else
                const SizedBox(
                  height: 48,
                  width: 48,
                ),
              const SizedBox(
                height: 48,
                width: 48,
              ),
            ],
          ),
          const HeaderWidget(),
          Row(
            children: [
              const SizedBox(
                height: 48,
                width: 48,
              ),
              InkWell(
                onTap: () {
                  themeStore.switchTheme();
                },
                onHover: (value) {
                  setState(() {
                    isHoveringTheme = value;
                  });
                },
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: colors.border,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: colors.cardBackground,
                  ),
                  child: Icon(
                    themeStore.value == ThemeMode.dark
                        ? PhosphorIcons.regular.sunDim
                        : PhosphorIcons.regular.moonStars,
                    color: isHoveringTheme ? colors.main : colors.primaryText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
