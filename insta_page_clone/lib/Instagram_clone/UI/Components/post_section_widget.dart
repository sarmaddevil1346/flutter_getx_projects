import 'package:flutter/material.dart';
import 'package:insta_page_clone/Instagram_clone/UI/Components/post_header_build.dart';
import 'package:insta_page_clone/Instagram_clone/UI/Components/rich_text_section_build.dart';

import 'default_image_list.dart';
import 'header_footer_widget.dart';

class PostSectionWidget extends StatelessWidget {
  const PostSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        profileimage.length,
            (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(profileimage[index]),
            postheaderRow(index),
            const PostSectionFooter(),
            Container(
              padding: const EdgeInsets.all(15),
              child: richtextbuildSection(),
            )
          ],
        ),
      ),
    );
  }

}