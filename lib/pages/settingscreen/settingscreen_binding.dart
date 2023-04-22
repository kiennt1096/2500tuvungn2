import 'package:get/get.dart';

import '../../core.dart';

class SettingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SettingScreenController>(SettingScreenController());
  }
}
