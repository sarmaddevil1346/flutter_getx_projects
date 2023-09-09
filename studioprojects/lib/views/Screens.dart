import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroGetX extends StatelessWidget {
  const IntroGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: getXSnackBar,
      ),
    );
  }

  void getXSnackBar() {
    Get.snackbar("This is a label", "This is a message",
        animationDuration: const Duration(seconds: 1),
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM);
  }
}
