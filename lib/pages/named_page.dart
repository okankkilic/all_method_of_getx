import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedPage extends StatelessWidget {
  const NamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The content is: ${Get.parameters['someValue']}"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  "/",
                );
              },
              child: const Text("Go Home"),
            ),
          ],
        ),
      ),
    );
  }
}
