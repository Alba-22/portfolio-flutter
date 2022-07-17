import 'package:flutter/material.dart';

import 'package:alba/app/core/components/layout/section_widget.dart';

import 'post_item_widget.dart';

class MobilePostsWidget extends StatelessWidget {
  const MobilePostsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SectionWidget(
            title: "POSTS",
            subtitle: "Alguns aprendizados que resolvo escrever e publicar para ajudar os outros.",
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 450,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 30),
              PostItemWidget(
                title: "Entendo o consumo de APIs RESTful no Flutter",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
                publicationDate: DateTime(2022, 05, 13),
              ),
              const SizedBox(width: 50),
              PostItemWidget(
                title: "Entendo o consumo de APIs RESTful no Flutter",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
                publicationDate: DateTime(2022, 05, 13),
              ),
              const SizedBox(width: 50),
              PostItemWidget(
                title: "Entendo o consumo de APIs RESTful no Flutter",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
                publicationDate: DateTime(2022, 05, 13),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ],
    );
  }
}
