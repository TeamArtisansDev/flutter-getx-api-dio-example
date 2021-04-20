import 'package:get/get.dart';
import 'package:getx_app/pages/auth/auth_binding.dart';
import 'package:getx_app/pages/auth/login_page.dart';
import 'package:getx_app/pages/dashboard/dashboard_binding.dart';
import 'package:getx_app/pages/dashboard/dashboard_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
  ];
}
