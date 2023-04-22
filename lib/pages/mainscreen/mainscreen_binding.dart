import 'package:get/get.dart';

import '../../core.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainScreenController>(MainScreenController());
  }
}
