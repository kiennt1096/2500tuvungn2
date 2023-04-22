import 'package:get/get.dart';

import '../../core.dart';

class MemoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MemoryScreenController>(MemoryScreenController());
  }
}
