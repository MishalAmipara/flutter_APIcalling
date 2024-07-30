import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MYGetxApiCalling extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  Mygetxclass mygetxclass = Get.put(Mygetxclass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          ElevatedButton(
              onPressed: () {
                mygetxclass.Mysum(t1.text, t2.text);
              },
              child: Text("Sum")),
          Obx(() => Text("${mygetxclass.sum}"))
        ],
      ),
    );
  }
}

class Mygetxclass extends GetxController {
  RxInt sum = 0.obs;

  @override
  void onInit() {}

  void Mysum(String a, String b) {
    sum.value = int.parse(a) + int.parse(b);
  }
}
