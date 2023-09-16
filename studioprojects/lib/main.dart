import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioprojects/views/components/get_height.dart';
import 'package:studioprojects/views/components/routes_screen.dart';
import 'package:studioprojects/views/favourite_example/favourite_screen.dart';
import 'package:studioprojects/views/image_picker_screen/image_picker.dart';
import 'package:studioprojects/views/opacity_example/opacity_example.dart';
import 'package:studioprojects/views/switch_example/switch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const ImagePickerExample(),
      getPages: [
        GetPage(
          name: "/",
          page: () => const ImagePickerExample(),
        ),
        GetPage(
          name: "/secondScreen",
          page: () => RoutesScreen(""),
        ),
        GetPage(
          name: "/GetHeightWidth",
          page: () => const GetHeightWidth(),
        ),
      ],
    );
  }
}
