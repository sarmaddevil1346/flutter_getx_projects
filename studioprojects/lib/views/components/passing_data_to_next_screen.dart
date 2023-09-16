import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../navigation_screen/second_screen.dart';
import 'default_list_tile.dart';

class PassingDataToNextScreen extends StatelessWidget {
  const PassingDataToNextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: 'GetX Passing Data to Next Screen',
      listSubTitle: 'Do you Want to Send Message on next screen',
      press: () {
        Get.to( SecondScreen(
          'sarmad',
        ));
      },
    );
  }
}
