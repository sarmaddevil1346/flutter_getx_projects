import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation_screen/second_screen.dart';
import 'default_list_tile.dart';

class Navigators extends StatelessWidget {
  const Navigators({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: 'GetX Navigators',
      listSubTitle: 'Do you Want to move on next screen',
      press: () {
        Get.to( SecondScreen( 'sarmad',));
      },
    );
  }
}
