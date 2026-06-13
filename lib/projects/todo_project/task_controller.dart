import 'package:get/state_manager.dart';

class TaskController extends GetxController {
  final RxList<Task> tasks = <Task>[
    Task(id: "4234234234", title: "Make video on Getx", isCompleted: false),
    Task(id: "4234234236", title: "Make video on Flutter", isCompleted: false),
    Task(id: "4234234237", title: "Make video on Ai", isCompleted: true),
    Task(
      id: "4234234238",
      title: "Make video on Harmesh Agent",
      isCompleted: false,
    ),
  ].obs;

  void addTask(String title) {
    if (title.isNotEmpty) {
      var newTask = Task(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        isCompleted: false,
      );

      tasks.add(newTask);
      print("Your Task Is Added");
    }
  }

  void updateTask(String id, String title) {
    final index = tasks.indexWhere((t) => t.id == id);
    tasks[index] = tasks[index].copyWith(title: title);
    print("Your task is updated");
  }

  void toggleTask(String id) {
    final index = tasks.indexWhere((t) => t.id == id);
    tasks[index] = tasks[index].copyWith(
      isCompleted: !tasks[index].isCompleted,
    );

    print("Task Updated");
  }

  void deleteTask(String id) {
    tasks.removeWhere((task) => task.id == id);
  }
}

class Task {
  String id;
  String title;
  bool isCompleted;

  Task({required this.id, required this.title, this.isCompleted = false});

  Task copyWith({String? id, String? title, bool? isCompleted}) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
