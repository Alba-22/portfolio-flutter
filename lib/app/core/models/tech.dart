enum Tech {
  flutter("Flutter", "assets/icons/techs/flutter.svg"),
  dart("Dart", "assets/icons/techs/dart.svg"),
  xcode("XCode", "assets/icons/techs/xcode.svg"),
  appstore("AppStore", "assets/icons/techs/appstore.svg"),
  playstore("PlayStore", "assets/icons/techs/playstore.svg"),
  git("Git", "assets/icons/techs/git.svg"),
  figma("Figma", "assets/icons/techs/figma.svg"),
  firebase("Firebase", "assets/icons/techs/firebase.svg");

  final String renderName;
  final String iconPath;

  const Tech(this.renderName, this.iconPath);
}
