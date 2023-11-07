import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(() => Text(controller.name.value.toString())),
            ),
            SizedBox(height: Get.width * 0.06),
            Center(
              child: ElevatedButton(
                onPressed: () => controller.increment(),
                child: const Text("Increment"),
              ),
            ),
             Center(
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.POST),
                child: const Text("Post"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
