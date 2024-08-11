import 'package:all_get_method/controllers/lang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationPage extends StatelessWidget {
  const TranslationPage({super.key});

  @override
  Widget build(BuildContext context) {
    LangController langController = Get.put(LangController());

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello Everyone'.tr,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              langController.changeLanguage('tr', 'TR');
            },
            child: const Text("Turkish"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              langController.changeLanguage('fr', 'FR');
            },
            child: const Text("French"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              langController.changeLanguage('en', 'EN');
            },
            child: const Text("English"),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: Get.back,
            child: Text('Back'.tr),
          ),
        ],
      ),
    ));
  }
}
