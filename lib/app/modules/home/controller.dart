import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    final locale = Locale(languageCode, countryCode);
    Get.dialog(const Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Future.delayed(const Duration(seconds: 1)).then((value) {
      Get.back();
      Get.updateLocale(locale).catchError((onError) {});
    });
  }
}
