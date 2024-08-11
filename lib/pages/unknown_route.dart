import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("An Unknown Error Occurred"),
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
