import 'package:all_get_method/controllers/async_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/service.dart';

class GetPutAsync extends StatelessWidget {
  const GetPutAsync({super.key});

  @override
  Widget build(BuildContext context) {
    Get.putAsync<AsnycController>(() async => AsnycController());

    return Scaffold(
      body: Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click Buttons and Check Out Console",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<AsnycController>();
                Get.find<AsnycController>().asyncCounter();
              },
              child: const Text("Get.putAsync"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<MyService>().incrementCounter();
              },
              child: const Text("GetX Service"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: Get.back,
              child: const Text("Back"),
            ),
          ],
        )),
      ),
    );
  }
}
