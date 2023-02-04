import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHieght() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = getScreenHieght() / pixel;
    return getScreenHieght() / x;
  }

  static getWidth(double pixel) {
    double x = getScreenWidth() / pixel;
    return getScreenWidth() / x;
  }
}
