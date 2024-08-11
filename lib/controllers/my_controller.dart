import 'package:get/get.dart';

class MyController extends GetxController {
  var countX = 0.obs;

  void increment() {
    countX++;
    update(['countId']);
  }
}
