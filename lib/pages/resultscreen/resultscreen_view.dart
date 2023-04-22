import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuvung_tiengnhatn2_app/core.dart';

class ResultScreenView extends StatelessWidget {
  const ResultScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ResultArgument;
    return Scaffold(
      appBar: myAppbar(
          "$result: ${arguments.numberOfCorrectAns.toString()} / ${arguments.tangoTestResultList.length}"),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: arguments.tangoTestResultList.map((result) {
                  return ResultCard(
                    result: result,
                    showLine: result.id ==
                            arguments
                                .tangoTestResultList[
                                    arguments.tangoTestResultList.length - 1]
                                .id
                        ? false
                        : true,
                    showSizedbox:
                        result.id == arguments.tangoTestResultList[0].id
                            ? true
                            : false,
                    test: arguments.test,
                  );
                }).toList(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final TangoTestResult result;
  final bool showLine;
  final bool showSizedbox;
  final String test;
  const ResultCard(
      {Key? key,
      required this.result,
      required this.showLine,
      required this.showSizedbox,
      required this.test})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenHeight(16)),
      child: Column(
        children: [
          showSizedbox ? SizedBox(height: getScreenHeight(16)) : Container(),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getScreenHeight(20),
                  width: getScreenWidth(20),
                  child: SvgPicture.asset(result.result == true
                      ? "assets/icons/icon-trueanswer.svg"
                      : "assets/icons/icon-wronganswer.svg"),
                ),
                SizedBox(width: getScreenWidth(10)),
                Container(
                  height: getScreenHeight(result.result == true ? 20 : 30),
                  width: getScreenWidth(1),
                  color: borderColor,
                ),
                SizedBox(width: getScreenWidth(10)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        title: "Câu hỏi: ",
                        text: result.question.toString(),
                        color: textColor,
                        fontFamily: test == "JPVN" ? fontJP : fontVNBold,
                      ),
                      TitleText(
                        title: "Đáp án: ",
                        text: result.trueAnswer,
                        color: trueSelectedColor,
                        fontFamily: test == "JPVN" ? fontVNBold : fontJP,
                      ),
                      result.result == false
                          ? TitleText(
                              title: "Bạn chọn: ",
                              text: result.selectedAnswer,
                              color: wrongSelectedColor,
                              fontFamily: test == "JPVN" ? fontVNBold : fontJP,
                            )
                          : Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
          showLine
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: getScreenHeight(16)),
                  width: double.infinity,
                  color: borderColor,
                  height: 1,
                )
              : SizedBox(
                  height: getScreenHeight(16),
                ),
        ],
      ),
    );
  }
}
