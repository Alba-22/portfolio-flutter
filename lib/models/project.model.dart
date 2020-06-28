class ProjectModel {

  final String name;
  final String mainImage;
  final String description;
  final List<String> images;

  const ProjectModel({
    this.name, this.mainImage, this.description, this.images
  });
}

const List<ProjectModel> projects = [
  ProjectModel(
    name: "BitsBlockchain",
    mainImage: "assets/images/bitsblockchain.jpg"
  ),
  ProjectModel(
    name: "Zenaide Bar",
    mainImage: "assets/images/zenaide.jpeg"
  ),
  ProjectModel(
    name: "Cooprata App",
    mainImage: "assets/images/cooprata.jpeg"
  )
];