import 'package:all_get_method/pages/home_page.dart';
import 'package:all_get_method/pages/named_page.dart';
import 'package:all_get_method/pages/unknown_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'data/messages.dart';

void main() {
  runApp(const MyApp());
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
