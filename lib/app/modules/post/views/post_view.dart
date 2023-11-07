import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/routes/app_pages.dart';

import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PostView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Obx(
        () => IndexedStack(
          index: controller.state.value,
          children: [
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var item in controller.posts)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"],
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item["body"],
                          textAlign: TextAlign.left,
                        ),
                        ElevatedButton(
                            onPressed: () => Get.toNamed(Routes.DETAIL, arguments: item["id"]),
                            child: Text("Detail")),
                        SizedBox(
                          height: Get.width * 0.05,
                        )
                      ],
                    )
                ],
              ),
            ),
            Container(
              height: Get.height,
              child: Center(
                child: Text("Loading"),
              ),
            ),
            Container(
              height: Get.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("error"),
                  ElevatedButton(
                    onPressed: () => controller.getPost(),
                    child: Text("Refresh"),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
