import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  var name = "Nitish".obs;
  var phoneNumber = 12343534534.obs;

  String marks = "450";

  void setMarks(String m) {
    marks = m;
    update();
  }
}
