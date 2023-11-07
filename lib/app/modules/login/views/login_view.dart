import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Get.offAllNamed(Routes.HOME),
        child: const Text("login"),
      )),
    );
  }
}
