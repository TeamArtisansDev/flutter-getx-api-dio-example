import 'package:get/get.dart';
import 'package:getx_app/pages/auth/auth_controller.dart';
import 'package:getx_app/shared/api/user_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<UserController>(() => UserController());
  }
}
