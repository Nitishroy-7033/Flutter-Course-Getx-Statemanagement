import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/controllers/home_page_controller.dart';
import 'package:getx_learning/pages/about_page.dart';
import 'package:getx_learning/pages/get_builder_page.dart';
import 'package:getx_learning/pages/get_workers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController = Get.put(HomePageController());
    TextEditingController newNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(),
            Obx(
              () => Text(
                "My Name Is : ${homePageController.name.value}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "Contact Number Is : ${homePageController.phoneNumber.value}",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 50),
            TextFormField(
              controller: newNameController,
              decoration: InputDecoration(hintText: "Enter Your Name"),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                print(newNameController.text);
                homePageController.name.value = newNameController.text;
              },
              label: Text("Save"),
              icon: Icon(Icons.save),
            ),

            ElevatedButton(
              onPressed: () {
                // Get.to(AboutPage());
              },
              child: Text("Go to About Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetBuilderPage());
              },
              child: Text("Go to Get Builder"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetWorkersPage());
              },
              child: Text("Getx Workers"),
            ),
          ],
        ),
      ),
    );
  }
}
