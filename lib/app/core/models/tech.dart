enum Tech {
  flutter("Flutter", "images/flutter.svg"),
  dart("Dart", "images/dart.svg"),
  xcode("XCode", "images/xcode.svg"),
  appstore("AppStore", "images/appstore.svg"),
  playstore("PlayStore", "images/playstore.svg"),
  git("Git", "images/git.svg"),
  figma("Figma", "images/figma.svg"),
  firebase("Firebase", "images/firebase.svg");

  final String renderName;
  final String iconPath;

  const Tech(this.renderName, this.iconPath);
}
