import 'package:get/get.dart';
import 'package:getx_app/pages/auth/models/login_model.dart';
import 'package:getx_app/pages/posts/models/post.dart';
import 'package:getx_app/shared/api/user_controller.dart';

import 'auth_provider.dart';

class AuthController extends GetxController {
  bool loggedIn = true;
  @override
  void onInit() {
    super.onInit();
  }

  void makeLogin(LoginModel data) {
    final userController = Get.find<UserController>();
    AuthProvider().postLogin(
      onSuccess: (posts) {
        userController.saveToken(posts.token);
        loggedIn = false;
        update();
      },
      onError: (error) {
        print(error);
        loggedIn = false;
        update();
        print("Error");
      },
      data: data.toJson(),
    );
  }
}
