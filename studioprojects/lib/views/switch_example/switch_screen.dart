import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../GetXController/switch_controler.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  SwitchController switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Switch(
                value: switchController.notification.value,
                onChanged: (value) {
                  switchController.setNotification(value);
                },
              ))
        ],
      ),
    );
  }
}
