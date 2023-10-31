import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  HeaderItem? hoveringItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColors>()!;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: colors.border,
        ),
        borderRadius: BorderRadius.circular(100),
        color: colors.cardBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: HeaderItem.values.map((e) {
          return InkWell(
            onHover: (value) {
              if (value) {
                hoveringItem = e;
              } else {
                hoveringItem = null;
              }
              setState(() {});
            },
            onTap: () {
              Navigator.of(context).pushNamed("/${e.route}");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Text(
                e.text,
                style: TextStyle(
                  color: hoveringItem == e ? colors.main : colors.primaryText,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

enum HeaderItem {
  aboutMe("About me", "about"),
  projects("Projects", "projects"),
  blog("Blog", "blog");

  final String text;
  final String route;

  const HeaderItem(this.text, this.route);
}
