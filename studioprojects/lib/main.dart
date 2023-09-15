import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioprojects/views/Screens.dart';
import 'package:studioprojects/views/components/get_height.dart';
import 'package:studioprojects/views/components/routes_screen.dart';
import 'package:studioprojects/views/increament_example/increament_getx.dart';
import 'package:studioprojects/views/opacity_example.dart';

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
      home: const OpacityExample(),
      getPages: [
        GetPage(
          name: "/",
          page: () => const OpacityExample(),
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
