import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'default_list_tile.dart';

class Routes extends StatelessWidget {
  const Routes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: 'GetX Routes',
      listSubTitle: 'Do you Want to move on next screen',
      press: () {
        // Get.to(const SecondScreen(
        //   name: 'sarmad',
        // ));
        Get.toNamed("./secondScreen", arguments: ["sarmad"]);
      },
    );
  }
}
