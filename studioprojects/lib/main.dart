import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioprojects/views/Screens.dart';
import 'package:studioprojects/views/components/get_height.dart';
import 'package:studioprojects/views/components/routes_screen.dart';

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
      home: const IntroGetX(),
      getPages: [
        GetPage(
          name: "/",
          page: () => const IntroGetX(),
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
