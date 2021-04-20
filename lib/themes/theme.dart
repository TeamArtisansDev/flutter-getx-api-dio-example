import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  late ThemeMode themeMode;

  final box = GetStorage();

  @override // called when you use Get.put before running app
  void onInit() {
    super.onInit();
    _restoreTheme();
  }

  void _restoreTheme() {
    bool isDark =
        box.read('isDark') ?? true; // null check for first time running this
    if (isDark) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
  }

  void changeThemeMode(bool val) {
    box.write('isDark', val);
  }
}
