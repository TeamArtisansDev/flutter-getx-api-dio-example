import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/routes/app_pages.dart';
import 'package:getx_app/routes/app_routes.dart';
import 'package:getx_app/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx App",
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
