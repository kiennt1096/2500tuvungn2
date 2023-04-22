import 'package:get/get.dart';

import '../../core.dart';

class TangoListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TangoListScreenController>(TangoListScreenController());
  }
}
