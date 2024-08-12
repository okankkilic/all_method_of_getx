import 'package:all_get_method/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetOffPage extends StatelessWidget {
  const GetOffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Navigate to a new page\n while removing the current page",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.off(() => const ThirdPage());
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
