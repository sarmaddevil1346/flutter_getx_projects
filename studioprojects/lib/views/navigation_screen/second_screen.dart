import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen(this.name, {super.key});
   var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is a message Passed by first activity $name ",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 30,),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go Back")),
          )
        ],
      ),
    );
  }
}
