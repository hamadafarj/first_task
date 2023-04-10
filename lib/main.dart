import 'package:first_task/app/core/utils/messages.dart';
import 'package:first_task/app/modules/home/controller.dart';
import 'package:first_task/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              translations: Messages(),
               locale: Get.deviceLocale,
              debugShowCheckedModeBanner: false,
              title: 'First task - desgin task',
              home: const HomePage());
        });
  }
}
