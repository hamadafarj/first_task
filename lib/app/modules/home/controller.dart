import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    final locale = Locale(languageCode, countryCode);
     // print('Changing language to $locale');

    Get.updateLocale(locale);
  }
}