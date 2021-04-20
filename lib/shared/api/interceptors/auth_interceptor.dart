import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_app/shared/api/user_controller.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Get.put(UserController());
    final userController = Get.find<UserController>();
    late final authData = userController.token;

    if (authData != null) {
      options.headers['Authorization'] = 'TOKEN $authData';
    }

    return super.onRequest(options, handler);
  }
}
