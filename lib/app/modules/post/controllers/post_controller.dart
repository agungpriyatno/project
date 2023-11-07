import 'package:get/get.dart';

class PostController extends GetxController {
  //TODO: Implement PostController
  final connect = GetConnect();

  final state = 1.obs;
  final count = 0.obs;
  final posts = [].obs;

  @override
  void onInit() {
    getPost();
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

  Future<void> getPost() async {
    try {
      state.value = 1;
      final res = await connect
          .get<List<dynamic>>("https://jsonplaceholder.typicode.com/posts");
      posts.value = res.body ?? [];
      state.value = 0;
    } catch (e) {
      state.value = 2;
      Get.snackbar("error", "gagal mengambil data");
    }
  }
}
