import 'package:get/get.dart';

import '../../core.dart';

class FavouriteScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FavouriteScreenController>(FavouriteScreenController());
  }
}
