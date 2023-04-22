class MockTestQuestion {
  int? id;
  String? question;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  String? trueanswer;
  String? selectedanswer;

  MockTestQuestion({
    this.id,
    this.question,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.trueanswer,
    this.selectedanswer,
  });

  factory MockTestQuestion.fromJson(map) {
    return MockTestQuestion(
      id: map["id"],
      question: map["question"],
      answer1: map["answer1"],
      answer2: map["answer2"],
      answer3: map["answer3"],
      answer4: map["answer4"],
      trueanswer: map["trueanswer"],
    );
  }

  static List<MockTestQuestion> parseData(map) {
    var list = map["mocktestquestionList"] as List;
    return list
        .map((mocktestquestion) => MockTestQuestion.fromJson(mocktestquestion))
        .toList();
  }
}
