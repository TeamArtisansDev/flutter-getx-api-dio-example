import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/account/account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Center(
        child: Text(controller.name!),
      ),
    );
  }
}
