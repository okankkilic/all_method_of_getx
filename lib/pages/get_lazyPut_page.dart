import 'package:all_get_method/controllers/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  GetLazyPut({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<MyController>();
              },
              child: const Text("MyController has not been created yet"),
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
        ),
      ),
    );
  }
}
