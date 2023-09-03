
import 'package:flutter/material.dart';

import 'app_bar_icon_button_widget.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Image.asset(
      "assets/images/insta_label.png",
      height: 50,
    ),
    actions: const [
      AppIconButtonWidget(),
    ],
  );
}
