import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class FlashCardScreenController extends GetxController {
  List<Tango> tangoList = [];
  PageController? pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController!.dispose();
    super.onClose();
  }
}
