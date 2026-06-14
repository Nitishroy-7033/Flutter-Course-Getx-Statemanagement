import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    ever(count, (value) {
      print("Count changed to $value");
    });

    once(count, (value) {
      print("Count changed to only one $value");
    });

    debounce(count, (value) {
      // searchApi(value);
      print("Debounce activated");
    }, time: Duration(milliseconds: 500));

    interval(count, (value) {
      print("Intervals ${value}");
    }, time: Duration(seconds: 2));
  }
}
