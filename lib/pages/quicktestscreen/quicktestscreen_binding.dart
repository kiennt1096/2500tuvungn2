import 'package:get/get.dart';

import '../../core.dart';

class QuickTestScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<QuickTestScreenController>(QuickTestScreenController());
  }
}
