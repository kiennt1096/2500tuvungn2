import '../core.dart';

class Section {
  String? nameSectionJP;
  String? nameSectionVN;
  List<Tango>? tangoList;
  String? linkSection;
  String? linkAudio;

  Section({
    this.nameSectionJP,
    this.nameSectionVN,
    this.tangoList,
    this.linkSection,
    this.linkAudio,
  });

  factory Section.fromJson(map) {
    return Section(
      nameSectionJP: map["nameSectionJP"],
      nameSectionVN: map["nameSectionVN"],
      linkSection: "",
      linkAudio: "",
      tangoList: Tango.parseData(map),
    );
  }

  Map<String, dynamic> toJson() => {
        "nameSectionJP": nameSectionJP,
        "nameSectionVN": nameSectionVN,
        "tangoList": tangoList,
      };
}
