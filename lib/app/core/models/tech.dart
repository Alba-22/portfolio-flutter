enum Tech {
  flutter("Flutter", "icons/techs/flutter.svg"),
  dart("Dart", "icons/techs/dart.svg"),
  xcode("XCode", "icons/techs/xcode.svg"),
  appstore("AppStore", "icons/techs/appstore.svg"),
  playstore("PlayStore", "icons/techs/playstore.svg"),
  git("Git", "icons/techs/git.svg"),
  figma("Figma", "icons/techs/figma.svg"),
  firebase("Firebase", "icons/techs/firebase.svg");

  final String renderName;
  final String iconPath;

  const Tech(this.renderName, this.iconPath);
}
