import '../core.dart';

class MockTest {
  int? chapterNo;
  String? chapterNameJP;
  String? chapterNameVN;
  List<MockTestQuestion>? mocktestquestionList;

  MockTest({
    this.chapterNo,
    this.chapterNameJP,
    this.chapterNameVN,
    this.mocktestquestionList,
  });

  factory MockTest.fromJson(map) {
    return MockTest(
      chapterNo: map["chapterNo"],
      chapterNameJP: map["chapterNameJP"],
      chapterNameVN: map["chapterNameVN"],
      mocktestquestionList: MockTestQuestion.parseData(map),
    );
  }
}
