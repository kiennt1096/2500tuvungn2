import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenListController extends GetxController {
  List<Chapter> chapterList = [];
  @override
  void onInit() {
    chapterList = ChapterService().getChapterList();
    super.onInit();
  }
}
