import 'package:get/get.dart';
class IncrementController extends GetxController{

  final counter  =  1.obs;
  increment()
  {
    counter.value++;
  }

}