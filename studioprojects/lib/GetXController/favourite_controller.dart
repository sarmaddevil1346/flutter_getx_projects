import 'package:get/get.dart';

class FavouriteController {
  RxList<String> names = ["sarmad", "Ali", "Akbar", "Sabir"].obs;
  RxList emptyFavourite = [].obs;

  addListValues(String value) {
    emptyFavourite.add(value);
  }

  removeListValues(String value) {
    emptyFavourite.remove(value);
  }
}
