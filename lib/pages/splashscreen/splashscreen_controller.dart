import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../core.dart';

class SplashScreenController extends GetxController {
  List<SplashContent> splashContent = [];
  late PageController pageController;
  var icon = "assets/icons/right.svg".obs;
  final check = GetStorage();
  @override
  void onInit() {
    super.onInit();
    splashContent = SplashContentService().getSplashContentList();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void nextButton() {
    pageController.nextPage(
        duration: const Duration(seconds: 0, milliseconds: 700),
        curve: Curves.ease);
    if (pageController.page == 1) icon.value = "assets/icons/tick.svg";
    if (pageController.page == 2) {
      check.write("check", "ok");
      Get.offAndToNamed(Routes.main);
    }
  }

  void previousButton() {
    pageController.previousPage(
        duration: const Duration(seconds: 0, milliseconds: 700),
        curve: Curves.ease);
    if (pageController.page != 1) icon.value = "assets/icons/right.svg";
  }

  void skipButton() {
    check.write("check", "ok");
    Get.offAndToNamed(Routes.main);
  }

  AnimatedContainer buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: getScreenHeight(5)),
      height: isActive ? getScreenWidth(15) : getScreenWidth(10),
      width: isActive ? getScreenWidth(15) : getScreenWidth(10),
      decoration: BoxDecoration(
        color: isActive ? primaryColor : backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(getScreenHeight(10)),
        ),
        border: Border.all(color: isActive ? primaryColor : borderColor),
      ),
    );
  }
}
