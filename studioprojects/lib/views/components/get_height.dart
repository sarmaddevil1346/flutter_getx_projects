import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightWidth extends StatelessWidget {
  const GetHeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(color: Colors.purpleAccent),
      ),
    );
  }
}
