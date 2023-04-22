import '../core.dart';

class Chapter {
  int number;
  String nameChapterJP;
  String nameChapterVN;
  String mockTestLink;
  List<Section> sectionList;

  Chapter(this.number, this.nameChapterJP, this.nameChapterVN,
      this.mockTestLink, this.sectionList);
}
