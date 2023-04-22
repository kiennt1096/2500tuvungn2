import 'package:get/get.dart';

import '../../core.dart';

class StudyScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StudyScreenController>(StudyScreenController());
  }
}
