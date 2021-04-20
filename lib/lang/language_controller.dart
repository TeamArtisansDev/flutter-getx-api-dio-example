import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  late Locale currentLanguage;

  final box = GetStorage();

  @override // called when you use Get.put before running app
  void onInit() {
    super.onInit();
    _restoreLanguage();
  }

  void _restoreLanguage() {
    String lan = box.read('locale') ?? 'tr';
    if (lan == 'tr') {
      currentLanguage = Locale('tr', 'TR');
    } else if (lan == 'en') {
      currentLanguage = Locale('en', 'EN');
    }
  }

  void changeLanguage(String val) {
    box.write('locale', val);
  }
}
