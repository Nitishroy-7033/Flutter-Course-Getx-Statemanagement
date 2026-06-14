import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/controllers/home_page_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController =
        Get.find<HomePageController>();
    TextEditingController marksController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Get Builder Demo")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: []),
            GetBuilder<HomePageController>(
              builder: (controller) {
                return Text(
                  "Your Marks Is : ${controller.marks}",
                  style: TextStyle(fontSize: 40),
                );
              },
            ),

            SizedBox(height: 20),
            TextField(
              controller: marksController,
              decoration: InputDecoration(hintText: "Enter Your Marks"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print(marksController.text);
                homePageController.setMarks(marksController.text);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
