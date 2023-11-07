import 'package:get/get.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  final title = "loading...".obs;
  final body = "loading...".obs;
  final id = 0.obs;
  final count = 0.obs;
  final connect = GetConnect();

  @override
  void onInit() {
    id.value = Get.arguments as int;
    getPost(id.value);
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

  Future<void> getPost(int id) async {
    try {
      final res = await connect
          .get<dynamic>("https://jsonplaceholder.typicode.com/posts/${id}");
      if (!res.isOk) {
        Get.snackbar("error", "gagal mengambil data");
        return;
      }
      title.value = res.body["title"];
      body.value = res.body["body"];
    } catch (e) {
      Get.snackbar("error", "gagal mengambil data");
    }
  }
}
