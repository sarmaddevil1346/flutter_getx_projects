import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioprojects/GetXController/image_picker_controller.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: imagePickerController.imagePath.isNotEmpty
                    ? FileImage(
                        File(imagePickerController.imagePath.toString()))
                    : null,
              ),
              TextButton(onPressed: () => imagePickerController.getImage(), child: const Text("Pick The Image"))
            ],
          )),
    );
  }
}
