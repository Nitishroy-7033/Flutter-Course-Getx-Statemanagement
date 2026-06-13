import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/projects/todo_project/task_controller.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());
    TextEditingController newTaskdetails = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Tasks")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Todo Management"),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: newTaskdetails,
                    decoration: InputDecoration(
                      hintText: "What you will do ....",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    taskController.addTask(newTaskdetails.text);
                    newTaskdetails.clear();
                  },
                  icon: Icon(Icons.save),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(children: [Text("Your Works")]),
            SizedBox(height: 10),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      taskController.toggleTask(taskController.tasks[index].id);
                    },
                    leading: Icon(
                      taskController.tasks[index].isCompleted
                          ? Icons.circle
                          : Icons.circle_outlined,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        taskController.deleteTask(
                          taskController.tasks[index].id,
                        );
                      },
                      icon: Icon(Icons.delete),
                    ),
                    title: Text(
                      taskController.tasks[index].title,
                      style: TextStyle(
                        decoration: taskController.tasks[index].isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        color: taskController.tasks[index].isCompleted
                            ? Colors.grey
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
