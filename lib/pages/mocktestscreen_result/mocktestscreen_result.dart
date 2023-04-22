import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core.dart';

class MocktestScreenResult extends StatelessWidget {
  const MocktestScreenResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as List<MockTestQuestion>;
    int numberOfTrueSelected() {
      int a = 0;
      for (int i = 0; i < arguments.length; i++) {
        if (arguments[i].selectedanswer == arguments[i].trueanswer) a++;
      }
      return a;
    }

    return Scaffold(
      appBar:
          myAppbar("$result: ${numberOfTrueSelected()}/${arguments.length}"),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getScreenHeight(16)),
                Column(
                  children: arguments.map((mocktestquestion) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: getScreenHeight(16)),
                      child: MockTestResultRow(
                        mockTestQuestion: mocktestquestion,
                        showLine: mocktestquestion.id ==
                                arguments[arguments.length - 1].id
                            ? false
                            : true,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: getScreenHeight(16)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class MockTestResultRow extends StatelessWidget {
  const MockTestResultRow({Key? key, this.mockTestQuestion, this.showLine})
      : super(key: key);

  final MockTestQuestion? mockTestQuestion;
  final bool? showLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getScreenHeight(20),
                width: getScreenWidth(20),
                child: SvgPicture.asset(mockTestQuestion!.selectedanswer ==
                        mockTestQuestion!.trueanswer
                    ? "assets/icons/icon-trueanswer.svg"
                    : "assets/icons/icon-wronganswer.svg"),
              ),
              SizedBox(width: getScreenWidth(10)),
              Container(
                height: getScreenHeight(mockTestQuestion!.selectedanswer ==
                        mockTestQuestion!.trueanswer
                    ? 30
                    : 40),
                width: getScreenWidth(1),
                color: borderColor,
              ),
              SizedBox(width: getScreenWidth(10)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextMockTest(
                      title: "Câu hỏi: ",
                      text: mockTestQuestion!.question.toString(),
                      color: textColor,
                    ),
                    TitleTextMockTest(
                      title: "Đáp án: ",
                      text: mockTestQuestion!.trueanswer.toString(),
                      color: textColor,
                    ),
                    mockTestQuestion!.selectedanswer !=
                            mockTestQuestion!.trueanswer
                        ? TitleTextMockTest(
                            title: "Bạn chọn: ",
                            text: mockTestQuestion!.selectedanswer == null
                                ? " "
                                : mockTestQuestion!.selectedanswer.toString(),
                            color: wrongSelectedColor,
                          )
                        : Container(),
                  ],
                ),
              )
            ],
          ),
        ),
        showLine!
            ? Container(
                margin: EdgeInsets.symmetric(vertical: getScreenHeight(10)),
                width: double.infinity,
                color: borderColor,
                height: 1,
              )
            : Container(),
      ],
    );
  }
}

class TitleTextMockTest extends StatelessWidget {
  const TitleTextMockTest({
    Key? key,
    this.title,
    this.text,
    this.color,
  }) : super(key: key);
  final String? title;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: title,
        style: TextStyle(
            color: textColor,
            fontSize: getScreenHeight(14),
            fontFamily: fontVN),
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
                fontFamily: fontJP,
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: getScreenHeight(14)),
          )
        ]));
  }
}
