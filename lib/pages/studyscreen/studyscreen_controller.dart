import 'package:get/get.dart';

import '../../core.dart';

class StudyScreenController extends GetxController {
  List<Chapter> chapterList = [];

  @override
  void onInit() {
    chapterList = ChapterService().getChapterList();
    super.onInit();
  }
}
