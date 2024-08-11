import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                "$count",
                style: const TextStyle(fontSize: 40),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
          ElevatedButton(
              child: Text("Go Home"),
              onPressed: () {
                Get.back();
              }),
        ],
      )),
    );
  }
}
