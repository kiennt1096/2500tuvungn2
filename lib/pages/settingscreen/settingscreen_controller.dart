import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../core.dart';

class SettingScreenController extends GetxController {
  var time = int.parse(GetStorage().read("time").toString()).obs;

  void congButton() {
    if (time < 7) time = time + 1;
  }

  void truButton() {
    if (time > 1) time = time - 1;
  }

  void saveButton() {
    GetStorage().write("time", time.toString());
    Get.snackbar(
      snackbarTC,
      snackbarSaveOK,
      backgroundColor: trueSelectedColor,
      duration: const Duration(seconds: 1),
      colorText: backgroundColor,
    );
  }
}
