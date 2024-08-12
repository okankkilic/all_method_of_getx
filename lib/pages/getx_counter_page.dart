import 'package:all_get_method/controllers/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXCounterPage extends StatelessWidget {
  GetXCounterPage({super.key});

  MyController myController = Get.put(MyController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<MyController>(
            init: MyController(),
            builder: (controller) {
              return Text(
                "The value is ${myController.countX}",
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
          GetBuilder<MyController>(
            id: 'countId',
            init: MyController(),
            builder: (controller) {
              return Text(
                "The value is ${myController.countX}",
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: myController.increment,
            child: const Text("Increment"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: const Text("Go Home"),
              onPressed: () {
                Get.back();
              }),
        ],
      )),
    );
  }
}
