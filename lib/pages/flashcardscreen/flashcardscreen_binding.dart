import 'package:get/get.dart';

import '../../core.dart';

class FlashCardScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FlashCardScreenController>(FlashCardScreenController());
  }
}
