import 'package:get/get.dart';

class SwitchController {
  RxBool notification = false.obs;
  setNotification(bool value) {
    notification.value = value;
  }
}
