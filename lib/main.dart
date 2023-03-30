import 'package:first_task/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First task - desgin task',
              home: Directionality(
                textDirection: TextDirection.rtl,
                child: HomePage(),
              ));
        });
  }
}
