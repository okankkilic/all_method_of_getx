import 'package:all_get_method/pages/home_page.dart';
import 'package:all_get_method/pages/named_page.dart';
import 'package:all_get_method/pages/unknown_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/service.dart';
import 'data/messages.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('starting services...');
  await Get.putAsync<MyService>(() async => MyService());
  print('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      unknownRoute: GetPage(name: "/notfound", page: () => UnknownRoute()),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/NamedPage/:someValue', page: () => NamedPage()),
      ],
    );
  }
}
