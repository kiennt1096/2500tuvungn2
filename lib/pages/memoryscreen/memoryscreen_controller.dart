import 'dart:math';

import 'package:get/get.dart';
import 'package:tuvung_tiengnhatn2_app/core.dart';

class MemoryScreenController extends GetxController {
  List<Tango> favouriteTangoList = <Tango>[].obs;
  var n = 0.obs;

  void listGhiNhoBtn() {
    Get.toNamed(Routes.favourite);
  }

  void mockTestBtn() {
    Get.toNamed(Routes.mocktestlist);
  }

  void daThuocBtn() {
    favouriteTangoList.isEmpty
        ? Get.snackbar(
            snackbarTB,
            snackbarListEmpty,
            backgroundColor: primaryColor,
            duration: const Duration(seconds: 1),
            colorText: backgroundColor,
          )
        : deleteButtonFunction(favouriteTangoList[n.toInt()]);
  }

  void capNhapBtn() {
    updateDataButtonFunction();
  }

  void ramdomBtn() {
    favouriteTangoList.isEmpty
        ? Get.snackbar(
            snackbarTB,
            snackbarListEmpty,
            backgroundColor: primaryColor,
            duration: const Duration(seconds: 1),
            colorText: backgroundColor,
          )
        : suffleButtonFunction();
  }

  void updateDataButtonFunction() {
    n.value = 0;
    loadFavouriteTangoList();
    Get.snackbar(
      snackbarTC,
      snackbarUpdateOK,
      backgroundColor: trueSelectedColor,
      duration: const Duration(seconds: 1),
      colorText: backgroundColor,
    );
  }

  void suffleButtonFunction() {
    n.value = Random().nextInt(favouriteTangoList.length);
    //playSound.value = false;
  }

  Future loadFavouriteTangoList() async {
    favouriteTangoList.assignAll(await DatabaseHelper.instance.listFavourite());
    //print(favouriteTangoList[6].japaneseMain.toString());
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
    updateDataButtonFunction();
  }
}
