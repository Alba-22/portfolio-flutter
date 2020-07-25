class ProjectModel {

  final String name;
  final String mainImage;
  final String description;
  final List<String> images;
  final String imagesType;
  final String googlePlayLink;
  final String githubLink;

  const ProjectModel({
    this.name, 
    this.mainImage, 
    this.description, 
    this.images, 
    this.googlePlayLink,
    this.githubLink,
    this.imagesType
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
    imagesType: "height",
    googlePlayLink: "https://play.google.com/store/apps/details?id=bitsblockchain.net",
    description: "Primeiro App feito em Estágio, após estudar por meio de alguns cursos no Youtube e Udemy.\nFeito com base em um template comprado, sendo feitos então ajustes de layout e a integração com as APIs do cliente, para exibição de criptomoedas e operações com elas.",
  ),
  ProjectModel(
    name: "Zenaide Bar",
    mainImage: "assets/images/zenaide.jpeg",
    images: [
      "assets/images/zenaide/zenaide1.png",
      "assets/images/zenaide/zenaide2.png",
      "assets/images/zenaide/zenaide3.png",
    ],
    imagesType: "height",
    googlePlayLink: "https://play.google.com/store/apps/details?id=br.com.zenaide",
    description: "Segundo app concluido em estágio. App para um bar de Uberlândia em que há um sistema de compra de voucher para consumo posterior, utilizado pelo bar no contexto da pandemia de Covid-19.\nPrincipais features e implementações no app foram um sistema de carrinho, feito utilizando o gerenciamento de estado pelo plugin mobx, e pagamento através de cartão de crédito."
  ),
  ProjectModel(
    name: "Cooprata App",
    mainImage: "assets/images/cooprata.jpeg",
    images: [
      "assets/images/cooprata/cooprata1.png",
      "assets/images/cooprata/cooprata2.png",
      "assets/images/cooprata/cooprata3.png",
      "assets/images/cooprata/cooprata4.png",
    ],
    imagesType: "height",
    googlePlayLink: "https://play.google.com/store/apps/details?id=br.com.bkpi.cooprata",
    description: "Projeto de meu primeiro freelance na empresa BKPI, sendo feito um app para a feira de agronegócio da Cooprata, onde seus clientes poderiam fazer reservas de pedidos.\nHouve a criação de telas a partir do trabalho de um designer e integração com API feita para este app. Além disso, foi focou-se bastante na usabilidade do app para usuários mais leigos em tecnologias, que eram o público alvo.",
  ),
  ProjectModel(
    name: "Quarentify",
    mainImage: "assets/images/quarentify.jpeg",
    images: [
      "assets/images/quarentify/quarentify1.png",
      "assets/images/quarentify/quarentify2.png",
      "assets/images/quarentify/quarentify3.png",
    ],
    imagesType: "width",
    githubLink: "https://github.com/Alba-22/quarentify/",
    description: "Projeto feito durante a pandemia de Covid-19, em conjunto com Davi Augusto(agst.dev). Aplicação basicamente traz uma interface visual na qual o usuário, após logar com sua conta do Spotify, consegue obter algumas estatísticas de seu uso durante a quarentena.\nDentre as principais características há: Top Artistas escutados, Top Música escutadas, Gêneros mais escutados e Criação de playlist com base nos dados obtidos.",
  ),
];