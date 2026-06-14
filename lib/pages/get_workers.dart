import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/controllers/counter_controller.dart';

class GetWorkersPage extends StatelessWidget {
  const GetWorkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: Text("Getx Workers")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: []),
            Obx(
              () => Text(
                "Value : ${controller.count.value}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    controller.count.value++;
                  },
                  icon: Icon(Icons.add),
                ),
                SizedBox(width: 50),
                IconButton(
                  onPressed: () {
                    controller.count.value--;
                  },
                  icon: Icon(Icons.minimize),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
