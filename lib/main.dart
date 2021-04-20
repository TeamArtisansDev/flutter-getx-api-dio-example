import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_app/lang/language_controller.dart';
import 'package:getx_app/lang/locale.dart';
import 'package:getx_app/shared/logger/logger_utils.dart';

import 'themes/theme.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(LanguageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final languageContreller = Get.find<LanguageController>();
    return GetMaterialApp(
      translations: TranslationService(),
      locale: languageContreller.currentLanguage,
      //fallbackLocale: TranslationService.fallbackLocale,
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeController.themeMode,
      enableLog: true,
      logWriterCallback: Logger.write,
    );
  }
}
