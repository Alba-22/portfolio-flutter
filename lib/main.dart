import 'package:alba/app/core/utils/custom_colors.dart';
import 'package:alba/app/core/utils/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/core/di/di.dart';
import 'app/pages/about/about_page.dart';
import 'app/pages/blog/blog_page.dart';
import 'app/pages/home/home_page.dart';
import 'app/pages/projects/projects_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(const Website());
}

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeStore,
      builder: (context, state, _) {
        return MaterialApp(
          title: "Gustavo Alba",
          scrollBehavior: CustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            extensions: <ThemeExtension<dynamic>>[
              const CustomColors(
                main: Color(0xFFFA825E),
                primaryText: Color(0xFF1A1C1F),
                secondaryText: Color(0xFF565D70),
                background: Color(0xFFEAEBEF),
                cardBackground: Color(0xFFF0F1F3),
                border: Color(0xFFDEDFE0),
              ),
            ],
            textTheme: GoogleFonts.albertSansTextTheme(),
          ),
          darkTheme: ThemeData.dark().copyWith(
            extensions: <ThemeExtension<dynamic>>[
              const CustomColors(
                main: Color(0xFFF35627),
                primaryText: Color(0xFFECECEC),
                secondaryText: Color(0xFFA0A2A7),
                background: Color(0xFF161922),
                cardBackground: Color(0xFF1C1F26),
                border: Color(0xFF292E3B),
              ),
            ],
            textTheme: GoogleFonts.albertSansTextTheme(),
          ),
          themeMode: state,
          routes: {
            "/": (context) => const HomePage(),
            "/about": (context) => const AboutPage(),
            "/projects": (context) => const ProjectsPage(),
            "/blog": (context) => const BlogPage(),
          },
        );
      },
    );
  }
}
