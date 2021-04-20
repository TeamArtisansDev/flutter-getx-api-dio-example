import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/auth/models/login_model.dart';

import 'auth_controller.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: GetBuilder<AuthController>(
          builder: (controller) {
            return ElevatedButton(
                onPressed: () {
                  controller.makeLogin(
                      LoginModel(username: "test00", password: "user1pass"));
                  if (controller.loggedIn) {
                    Get.back();
                  }
                },
                child: Text("Hellö"));
          },
        ),
      ),
    );
  }
}
