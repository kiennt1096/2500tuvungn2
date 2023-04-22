import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MocktestScreenListController>(MocktestScreenListController());
  }
}
