import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioprojects/views/components/default_list_tile.dart';

class MediaQueryHeightWidth extends StatelessWidget {
  const MediaQueryHeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: "GetX Height and Width",
      listSubTitle: "See Responsive Height and Width ",
      press: () {
        Get.toNamed("./GetHeightWidth");
      },
    );
  }
}
