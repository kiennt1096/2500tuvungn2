import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainScreenController extends GetxController {
  var selectedIndex = 1.obs;
  @override
  void onInit() {
    GetStorage().hasData("time") ? null : GetStorage().write("time", 2);
    super.onInit();
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
