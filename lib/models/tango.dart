class Tango {
  int? id;
  String? japaneseMain;
  String? japaneseExtra;
  String? means;
  String? type;
  String? exJP1;
  String? exMean1;
  String? exJP2;
  String? exMean2;
  String? audio;

  Tango({
    this.id,
    this.japaneseMain,
    this.japaneseExtra,
    this.means,
    this.type,
    this.exJP1,
    this.exMean1,
    this.exJP2,
    this.exMean2,
    this.audio,
  });
  factory Tango.fromJson(map) {
    return Tango(
      id: map["id"],
      japaneseMain: map["japaneseMain"],
      japaneseExtra: map["japaneseExtra"],
      means: map["means"],
      type: map["type"],
      exJP1: map["exJP1"],
      exMean1: map["exMean1"],
      exJP2: map["exJP2"],
      exMean2: map["exMean2"],
      audio: map["audio"],
    );
  }

  static List<Tango> parseData(map) {
    var list = map["tangoList"] as List;
    return list.map((tango) => Tango.fromJson(tango)).toList();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'japaneseMain': japaneseMain,
      'japaneseExtra': japaneseExtra,
      'means': means,
      'type': type,
      'exJP1': exJP1,
      'exMean1': exMean1,
      'exJP2': exJP2,
      'exMean2': exMean2,
      'audio': audio,
    };
  }
}
