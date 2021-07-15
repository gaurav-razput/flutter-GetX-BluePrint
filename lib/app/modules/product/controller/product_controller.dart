import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_blueprint/app/data/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  int currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void next() {
    if (currentIndex < products.length - 1) {
      currentIndex++;
      update();
    } else {
      currentIndex = currentIndex;
      update();
    }
  }

  void preve() {
    if (currentIndex > 0) {
      currentIndex--;
      update();
    } else {
      currentIndex = 0;
      update();
    }
  }
}
