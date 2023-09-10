import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'default_list_tile.dart';
class DialogueBox extends StatelessWidget {
  const DialogueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      listTitle: "GetX Alert Dialogue",
      listSubTitle: "Do you want to show alert dialogue",
      press: () =>
          buildDefaultDialog(
              dialogueTitle: "This a demo GetX Alert Dialogue",
              dialogueMidTitle: "This is a mid title"),
    );
  }

  Future<dynamic> buildDefaultDialog(
      {required String dialogueTitle, required String dialogueMidTitle}) {
    return Get.defaultDialog(
      title: dialogueTitle,
      middleText: dialogueMidTitle,
      contentPadding: const EdgeInsets.all(20),
      backgroundColor: Colors.purpleAccent,
      confirm: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text("Ok"),
      ),
      cancel: ElevatedButton(
        onPressed: () {},
        child: const Text("Cancel"),
      ),
    );
  }
}
