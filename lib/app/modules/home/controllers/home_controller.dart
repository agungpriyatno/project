import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final title = "Home View";

  final count = 0.obs;
  final name = "Loading".obs;

  @override
  void onInit() async {
    print("get data nama");
    name.value = await getUserName();
    super.onInit();
  }

  @override
  void onReady() {
    print("ready");
    super.onReady();
  }

  @override
  void onClose() {
    print("close");
    super.onClose();
  }

  void increment() => count.value++;

  Future<String> getUserName() async {
   await Future.delayed(const Duration(seconds: 2));
   return "Agung Priyatno";
  }
}
