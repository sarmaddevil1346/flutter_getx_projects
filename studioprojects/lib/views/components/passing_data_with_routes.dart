import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'default_list_tile.dart';
class PassingDataWithRoutesToNextScreen extends StatelessWidget {
  const PassingDataWithRoutesToNextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: 'GetX Passing Data to Next Screen with Routes',
      listSubTitle: 'Do you Want to Send Message on next screen',
      press: () {
       // Get.to(const SecondScreen(name: 'sarmad',));

        Get.toNamed("./secondScreen",
        arguments: [
          "sarmad"
        ]
        );
      },
    );
  }
}
