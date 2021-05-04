import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/home/home_controller.dart';
import 'package:getx_app/routes/app_routes.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: Text("Account"),
              onPressed: () => Get.toNamed(
                    AppRoutes.ACCOUNT,
                    arguments: {'name': 'John Doe'},
                  ))
          //  RaisedButton(
          //   child: Text("Account"),
          //   onPressed: () => Get.toNamed(
          //     AppRoutes.ACCOUNT,
          //     arguments: {'name': 'John Doe'},
          //   ),
          // ),
          ),
    );
  }
}
