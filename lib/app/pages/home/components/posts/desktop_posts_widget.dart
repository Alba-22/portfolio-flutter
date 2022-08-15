import 'package:flutter/material.dart';

import 'package:alba/app/core/components/layout/section_widget.dart';

import 'post_item_widget.dart';

class DesktopPostsWidget extends StatelessWidget {
  const DesktopPostsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionWidget(
          title: "POSTS",
          subtitle: "Alguns aprendizados que resolvo escrever e publicar para ajudar os outros.",
        ),
        const SizedBox(height: 40),
        Row(
          children: [
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
          ],
        ),
      ],
    );
  }
}
