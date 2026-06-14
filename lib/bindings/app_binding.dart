import 'package:get/get.dart';
import 'package:getx_learning/controllers/counter_controller.dart';
import 'package:getx_learning/controllers/home_page_controller.dart';
import 'package:getx_learning/projects/todo_project/task_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<CounterController>(() => CounterController(), fenix: true);
    Get.lazyPut<TaskController>(() => TaskController(), fenix: true);
  }
}
