import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  String? token;

  final box = GetStorage();

  @override // called when you use Get.put before running app
  void onInit() {
    super.onInit();
    _restoreToken();
  }

  void _restoreToken() {
    String hasToken =
        box.read('token') ?? ""; // null check for first time running this
    if (hasToken.isNotEmpty) {
      token = hasToken;
    } else {
      token = null;
    }
  }

  void saveToken(String? val) {
    box.write('token', val);
  }
}
