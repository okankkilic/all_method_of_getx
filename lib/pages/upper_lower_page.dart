import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/user_name.dart';

class UpperLowerPage extends StatelessWidget {
  UpperLowerPage({super.key});
  var userNames = UserName();

  void convertToUpperCase() {
    userNames.nameList.value =
        userNames.nameList.map((userNames) => userNames.toUpperCase()).toList();
  }

  void convertToLowerCase() {
    userNames.nameList.value =
        userNames.nameList.map((userNames) => userNames.toLowerCase()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: userNames.nameList
                    .map((userNames) => Text(
                          userNames,
                          style: const TextStyle(fontSize: 40),
                        ))
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      convertToUpperCase();
                    },
                    child: const Text("Upper")),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      convertToLowerCase();
                    },
                    child: const Text("Lower")),
              ],
            ),
            ElevatedButton(
              onPressed: Get.back,
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
