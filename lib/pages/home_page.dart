import 'package:all_get_method/pages/get_lazyPut_page.dart';
import 'package:all_get_method/pages/second_page.dart';
import 'package:all_get_method/pages/translation_page.dart';
import 'package:all_get_method/pages/upper_lower_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'CounterPage.dart';
import 'get_off_page.dart';
import 'get_put_async.dart';
import 'getx_counter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Method Of Get")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text("Show Top Snackbar"),
              ),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be Top Snackbar Message",
                );
              },
            ),
            ElevatedButton(
              child: const Text("Show Bottom Snackbar"),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title (1)",
                  "This will be Bottom Snackbar Message (2)",
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: const Text("Another Title"),
                  messageText: const Text(
                    "Another Message",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  //colorText: Colors.white, (For Text[(1),(2)])
                  backgroundColor: Colors.blueGrey,
                  borderRadius: 30,
                  margin: const EdgeInsets.all(10),
                  //maxWidth: 300,
                  animationDuration: const Duration(milliseconds: 3000),
                  backgroundGradient: const LinearGradient(
                    colors: [Colors.red, Colors.yellow],
                  ),
                  borderColor: Colors.deepOrangeAccent,
                  borderWidth: 2,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 3,
                    ),
                  ],
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  icon: const Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  ),
                  shouldIconPulse: true,
                  mainButton: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: const Text(
                      "Retry",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  overlayBlur: 2,
                );
              },
            ),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text("Show Dialog"),
              ),
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: const TextStyle(fontSize: 25),
                  middleText: "This is middle text",
                  backgroundColor: Colors.grey.shade200,
                  radius: 20,
                  content: const Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text("Data Loading"),
                      )
                    ],
                  ),
                  /*
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.green,
                    cancel: Text(
                      "Cancels",
                      style: TextStyle(color: Colors.white),
                    ),
                    confirm: Text(
                      "Confirms",
                      style: TextStyle(color: Colors.white),
                    ),

                     */
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Action-1"),
                    ),
                    ElevatedButton(
                      child: Text("Action-2"),
                      onPressed: () {},
                    )
                  ],
                  barrierDismissible: false,
                );
              },
            ),
            ElevatedButton(
              child: Text("Bottom Sheet"),
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text('Light Theme'),
                        onTap: () => {Get.changeTheme(ThemeData.light())},
                        tileColor: Colors.grey.shade400,
                      ),
                      ListTile(
                        leading: const Icon(Icons.nights_stay),
                        iconColor: Colors.white,
                        title: const Text(
                          'Dark Theme',
                          style: TextStyle(color: Colors.white),
                        ),
                        tileColor: Colors.grey.shade800,
                        onTap: () => {Get.changeTheme(ThemeData.dark())},
                      ),
                    ],
                  ),
                  //barrierColor: Colors.indigo.shade100,
                  backgroundColor: Colors.blueGrey,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2,
                      )),
                  enableDrag: false,
                );
              },
            ),
            ElevatedButton(
                child: Text("Go to Unnamed Page"),
                onPressed: () {
                  Get.to(
                    SecondPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("Go to Named Page"),
                onPressed: () {
                  Get.toNamed(
                    "/NamedPage/1234",
                  );
                }),
            ElevatedButton(
                child: Text("Get Off Page"),
                onPressed: () {
                  Get.to(
                    GetOffPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("Counter"),
                onPressed: () {
                  Get.to(
                    () => CounterPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("Text Upper & Lower"),
                onPressed: () {
                  Get.to(
                    UpperLowerPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("GetX Counter"),
                onPressed: () {
                  Get.to(
                    () => GetXCounterPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("Languages"),
                onPressed: () {
                  Get.to(
                    () => const TranslationPage(),
                  );
                }),
            ElevatedButton(
                child: const Text("Get Lazy Put"),
                onPressed: () {
                  Get.to(
                    () => GetLazyPut(),
                  );
                }),
            ElevatedButton(
                child: const Text("Get putAsync/Service"),
                onPressed: () {
                  Get.to(
                    () => const GetPutAsync(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
