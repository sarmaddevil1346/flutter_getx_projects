
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void getXSnackBar() {
  Get.snackbar("This is a label", "This is a message",
      animationDuration: const Duration(seconds: 1),
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.TOP);
}