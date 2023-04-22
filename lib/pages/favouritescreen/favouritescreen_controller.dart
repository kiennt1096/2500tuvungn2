import 'package:get/get.dart';

import '../../core.dart';

class FavouriteScreenController extends GetxController {
  List<Tango> favouriteTangoList = <Tango>[].obs;

  Future loadFavouriteTangoList() async {
    favouriteTangoList.assignAll(await DatabaseHelper.instance.listFavourite());
    return favouriteTangoList;
  }

  deleteButtonFunction(Tango tango) async {
    try {
      await DatabaseHelper.instance.deleteTango(int.parse(tango.id.toString()));
      loadFavouriteTangoList();
      Get.snackbar(
        snackbarTC,
        "Đã xoá「${tango.japaneseMain}」 khỏi Ghi Nhớ!",
        backgroundColor: trueSelectedColor,
        duration: const Duration(seconds: 1),
        colorText: backgroundColor,
      );
    } catch (e) {
      Get.snackbar(
        snackbarTB,
        snackbarError,
        backgroundColor: primaryColor,
        duration: const Duration(seconds: 1),
        colorText: backgroundColor,
      );
    }
  }
}
