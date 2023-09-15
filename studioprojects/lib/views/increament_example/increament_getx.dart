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
    return Scaffold(
      body: Center(
        child: Text("Tapped${controller.counter}"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          controller.increment()  ;
        });
      },

      ),
    );
  }
}
