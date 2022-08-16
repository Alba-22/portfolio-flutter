import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:alba/app/core/models/tech.dart';

import 'project_item_widget.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      items: projects,
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        height: 650,
      ),
    );
  }

  static const List<ProjectItemWidget> projects = [
    ProjectItemWidget(
      title: "CCPR APP",
      subtitle: "App para monitoramento de dados relativos à coletas de leite dos produtores da cooperativa CCPR.",
      imagePath: "assets/images/projects/ccpr.png",
      redirectLink: "https://play.google.com/store/apps/details?id=io.bkpi.ccprapp",
      techs: [
        Tech.flutter,
        Tech.dart,
        Tech.git,
        Tech.firebase,
      ],
    ),
    ProjectItemWidget(
      title: "Técnico APPLIC",
      subtitle: "App para gerenciamento de projetos, fazendas e técnicos da consultoria APPLIC.",
      imagePath: "assets/images/projects/applic.png",
      redirectLink: "https://play.google.com/store/apps/details?id=io.bkpi.applic.technician",
      techs: [
        Tech.flutter,
        Tech.dart,
        Tech.git,
      ],
    ),
    ProjectItemWidget(
      title: "FEMEC 2022",
      subtitle: "Criação de um conjunto de 3 apps para o credenciamento da Feira FEMEC 2022, realizada pelo Sindicato Rural de Uberlândia.",
      imagePath: "assets/images/projects/femec.jpg",
      redirectLink: "https://play.google.com/store/apps/details?id=io.bkpi.femec.visitante",
      techs: [
        Tech.flutter,
        Tech.dart,
        Tech.git,
        Tech.firebase,
        Tech.figma,
      ],
    ),
    ProjectItemWidget(
      title: "Feira Cooprata",
      subtitle: "App para realização da feira virtual Cooprata, que aconteceu ao início da pandemia do corona vírus.",
      imagePath: "assets/images/projects/cooprata.jpg",
      redirectLink: "https://play.google.com/store/apps/details?id=br.com.bkpi.cooprata",
      techs: [
        Tech.flutter,
        Tech.dart,
        Tech.git,
      ],
    ),
    ProjectItemWidget(
      title: "Quarentify",
      subtitle:
          "Site para ver suas músicas mais escutadas no Spotify nos últimos meses. Feito ao início da pandemia como um pequeno projeto com Davi Augusto.",
      imagePath: "assets/images/projects/quarentify.png",
      redirectLink: "https://quarentify.agst.dev",
      techs: [
        Tech.flutter,
        Tech.dart,
        Tech.git,
      ],
    ),
  ];
}
