import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about.item.widget.dart';
import 'package:portfolio/views/about/about.title.widget.dart';

class AboutScreen extends StatelessWidget {

  final TabController tabController;

  const AboutScreen({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).backgroundColor,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            AboutTitle(
              title: "Educação",
            ),
            AboutItem(
              title: "Graduação",
              timeElapsed: "2019 - 2024",
              description: "Granduando em Ciência da Computação pela Universidade Federal de Uberlândia.",
            ),
            SizedBox(height: 50),
            AboutTitle(
              title: "Experiência Profissional",
            ),
            AboutItem(
              title: "Estágio em desenvolvimento de aplicações mobile",
              timeElapsed: "nov/2019 - presente",
              description: "Experiência adquirida majoritamente em desenvolvimento com Flutter(na criação de telas, comunicação com APIs e gerenciamento de estado da aplicação), além de um pouco de React Native e PHP(back-end com MySQL).",
            ),
            AboutItem(
              title: "Freelance BKPI",
              timeElapsed: "abril/2020",
              description: "Criação de aplicativo pra um cliente da empresa, atuando na criação de telas, fluxo da aplicação e comunicação com API.",
            ),
          ],
        ),
      ),
    );
  }
}