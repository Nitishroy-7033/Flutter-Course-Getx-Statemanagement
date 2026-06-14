import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Catelog.dart';
import 'package:getx_learning/bindings/app_binding.dart';
import 'package:getx_learning/config/app_theme.dart';
import 'package:getx_learning/config/routes.dart';
import 'package:getx_learning/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      getPages: pages,
      title: 'Flutter Demo',
      theme: myTheme,
      initialRoute: "/",
    );
  }
}
