import 'package:get/get.dart';
import 'package:getx_app/pages/account/account_binding.dart';
import 'package:getx_app/pages/account/account_page.dart';
import 'package:getx_app/pages/home/home_binding.dart';
import 'package:getx_app/pages/home/home_page.dart';
import 'package:getx_app/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    )
  ];
}
