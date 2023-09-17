import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../GetXController/increament_controller.dart';
class GetXIncrement extends StatefulWidget {
  const GetXIncrement({super.key});

  @override
  State<GetXIncrement> createState() => _GetXIncrementState();
}

class _GetXIncrementState extends State<GetXIncrement> {
  final IncrementController controller = Get.put(IncrementController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("rebuild");
    }
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Text("Tapped${controller.counter}");
        })
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.increment()  ;

      },

      ),
    );
  }
}
