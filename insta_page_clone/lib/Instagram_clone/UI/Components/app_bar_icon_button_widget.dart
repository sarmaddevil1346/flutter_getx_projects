import 'package:flutter/material.dart';

import 'icon_button.dart';

class AppIconButtonWidget extends StatelessWidget {
  const AppIconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          iconData: Icons.add_circle_outline_sharp,
          voidCallback: () {},
        ),
        IconButtonWidget(
          iconData: Icons.favorite_border_outlined,
          voidCallback: () {},
        ),
        IconButtonWidget(
          iconData: Icons.chat_bubble_outline,
          voidCallback: () {},
        ),
      ],
    );
  }
}
