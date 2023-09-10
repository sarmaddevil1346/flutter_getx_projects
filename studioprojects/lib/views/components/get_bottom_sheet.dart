import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'default_list_tile.dart';

class GetXBottomSheet extends StatelessWidget {
  const GetXBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: "GetX Bottom Sheet",
      listSubTitle: "Do you want to show Bottom Sheet",
      press: () {
        buildGetXBottomSheet();
      },
    );
  }
}

Future<dynamic> buildGetXBottomSheet() {
  return Get.bottomSheet(
    backgroundColor: Colors.purple,
    Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          DefaultListTile(
            listTitle: "Light Theme ",
            listSubTitle: "Do want to set Light Theme",
            press: () {
              Get.changeTheme(ThemeData.light());
            },
          ),
          DefaultListTile(
            listTitle: "Dark Theme ",
            listSubTitle: "Do want to set Dark Theme",
            press: () {
              Get.changeTheme(ThemeData.dark());
            },
          )
        ],
      ),
    ),
  );
}
