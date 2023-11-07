import 'package:get/get.dart';
import 'package:project/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final count = 0.obs;
  @override
  void onInit() async {
    var result = await checkLogin();
    if (result) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<bool> checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    return false;
  }
}
