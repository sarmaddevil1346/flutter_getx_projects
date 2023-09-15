import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetXController/opacity_controller.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  OpacityController opacityController1 = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Obx(
            () => Container(
              height: 100,
              width: 100,
              color:
                  Colors.purple.withOpacity(opacityController1.opacity.value),
            ),
          )),
          Obx(() => Slider(
                value: opacityController1.opacity.value,
                onChanged: (value) {
                  opacityController1.opacityController(value);
                },
              ))
        ],
      ),
    );
  }
}
