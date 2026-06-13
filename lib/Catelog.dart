import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/projects/todo_project/task_page.dart';

class Catelog extends StatelessWidget {
  const Catelog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Project Catelog")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            InkWell(
              onTap: () {
                Get.to(TaskPage());
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Todo Project",

                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Theme.of(context).colorScheme.primaryContainer,
            //   ),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.check_box,
            //         color: Theme.of(context).colorScheme.surface,
            //       ),
            //       SizedBox(width: 10),
            //       Text(
            //         "Todo Project",

            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Theme.of(context).colorScheme.surface,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
