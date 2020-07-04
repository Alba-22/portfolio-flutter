class ProjectModel {

  final String name;
  final String mainImage;
  final String description;
  final List<String> images;
  final String googlePlayLink;

  const ProjectModel({
    this.name, this.mainImage, this.description, this.images, this.googlePlayLink
  });
}

const List<ProjectModel> projects = [
  ProjectModel(
    name: "BitsBlockchain",
    mainImage: "assets/images/bitsblockchain.jpg",
    images: [
      "assets/images/bitsblockchain/bitsblockchain1.png",
      "assets/images/bitsblockchain/bitsblockchain2.png",
      "assets/images/bitsblockchain/bitsblockchain3.png",
      "assets/images/bitsblockchain/bitsblockchain4.png",
    ],
    googlePlayLink: "https://play.google.com/store/apps/details?id=bitsblockchain.net",
    description: "Primeiro App feito em Estágio, após estudar por meio de alguns cursos no Youtube e Udemy.\nFeito com base em um template comprado, sendo feitos então ajustes de layout e a integração com as APIs do cliente, para exibição de criptomoedas e operações com elas",
  ),
  // ProjectModel(
  //   name: "Zenaide Bar",
  //   mainImage: "assets/images/zenaide.jpeg"
  // ),
  ProjectModel(
    name: "Cooprata App",
    mainImage: "assets/images/cooprata.jpeg",
    images: [
      "assets/images/cooprata/cooprata1.png",
      "assets/images/cooprata/cooprata2.png",
      "assets/images/cooprata/cooprata3.png",
      "assets/images/cooprata/cooprata4.png",
    ],
    googlePlayLink: "https://play.google.com/store/apps/details?id=br.com.bkpi.cooprata",
    description: "Projeto de meu primeiro freelance na empresa BKPI, sendo feito um app para a feita de agronegócio da Cooprata, onde seus clientes poderiam fazer reservas de pedidos.\nHouve a criação de telas a partir do trabalho de um designer e integração com API feita para este app. Além disso, foi focou-se bastante na usabilidade do app para usuários mais leigos em tecnologias, que eram o público alvo.",
  )
];