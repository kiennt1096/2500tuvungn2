import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MocktestScreenTestController>(MocktestScreenTestController());
  }
}
