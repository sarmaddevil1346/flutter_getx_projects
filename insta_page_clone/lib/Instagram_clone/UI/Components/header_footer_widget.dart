import 'package:flutter/material.dart';
import 'package:insta_page_clone/Instagram_clone/UI/Components/icon_button.dart';

class PostSectionFooter extends StatelessWidget {
  const PostSectionFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          iconData: Icons.favorite_border_outlined,
          voidCallback: () {},
        ),
        IconButtonWidget(
          iconData: Icons.chat_bubble_outline,
          voidCallback: () {},
        ),
        IconButtonWidget(
          iconData: Icons.label_outline,
          voidCallback: () {},
        ),
        const Spacer(),
        IconButtonWidget(
          iconData: Icons.bookmark_border,
          voidCallback: () {},
        ),
      ],
    );
  }
}
