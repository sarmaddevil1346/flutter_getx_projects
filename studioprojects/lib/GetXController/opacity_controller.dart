import 'package:get/get.dart';
class OpacityController extends GetxController{

  final opacity  =  .4.obs;
  opacityController(double value)
  {
    opacity.value = value;
  }

}