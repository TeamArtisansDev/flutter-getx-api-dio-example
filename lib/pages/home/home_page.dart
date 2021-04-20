import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/lang/language_controller.dart';
import 'package:getx_app/themes/theme.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    final themeController = Get.find<ThemeController>();
    final languageController = Get.find<LanguageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Home Page".tr,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                child: Text('Switch to English'),
                onPressed: () {
                  languageController.changeLanguage('en');
                  Get.updateLocale(Locale('en', 'US'));
                },
              ),
              ElevatedButton(
                child: Text('Switch to Turkish'),
                onPressed: () {
                  languageController.changeLanguage('tr');
                  Get.updateLocale(Locale('tr', 'TR'));
                },
              ),
              ElevatedButton(
                child: Text('Dark Theme'),
                onPressed: () {
                  Get.changeThemeMode(ThemeMode.dark);
                  themeController.changeThemeMode(true);
                },
              ),
              ElevatedButton(
                child: Text('Light Theme'),
                onPressed: () {
                  Get.changeThemeMode(ThemeMode.light);
                  themeController.changeThemeMode(false);
                },
              ),
              ElevatedButton(
                child: Text('Go To login'),
                onPressed: () {
                  Get.toNamed('/login');
                },
              ),
              ElevatedButton(
                child: Text('Get Basket'),
                onPressed: () {
                  controller.getBasket();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
