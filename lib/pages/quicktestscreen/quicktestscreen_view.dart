import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class QuickTestScreenView extends GetView<QuickTestScreenController> {
  const QuickTestScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as QuickTestArgument;
    arguments.test == "JPVN"
        ? controller.moveDataJPVN(arguments.tangoList)
        : controller.moveDataVNJP(arguments.tangoList);
    controller.tangoTestList.shuffle();
    return Scaffold(
      appBar: myAppbar(testNV),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            //SizedBox(height: getScreenHeight(16)),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) => Question(
                      tangoTest: controller.tangoTestList[index],
                      test: arguments.test,
                    )),
                itemCount: controller.tangoTestList.length,
                controller: controller.pageController,
                onPageChanged: controller.updateTheQuestionNumber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Question extends StatelessWidget {
  final TangoTest tangoTest;
  final String test;
  const Question({
    Key? key,
    required this.tangoTest,
    required this.test,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuickTestScreenController quickTestScreenController =
        Get.put(QuickTestScreenController());
    return Padding(
      padding: EdgeInsets.all(getScreenHeight(32)),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(getScreenHeight(8)),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(getScreenHeight(20))),
          border: Border.all(
            color: borderColor,
            width: getScreenHeight(1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  tangoTest.question,
                  style: test == "JPVN"
                      ? TextStyle(
                          color: primaryColor,
                          fontSize: getScreenHeight(30),
                          fontFamily: fontJP,
                          fontWeight: FontWeight.bold,
                        )
                      : TextStyle(
                          color: primaryColor,
                          fontSize: getScreenHeight(30),
                          fontFamily: fontVNBold,
                        ),
                  textAlign: TextAlign.center,
                ),
                test == "JPVN"
                    ? Text(
                        tangoTest.questionExtend,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: getScreenHeight(20),
                          fontFamily: fontJP,
                        ),
                      )
                    : Container(),
              ],
            ),
            Column(
              children: [
                ...List.generate(
                    4,
                    (index) => AnswerSelection(
                          text: tangoTest.selection[index],
                          onTap: () => quickTestScreenController.checkAns(
                              tangoTest, index),
                          index: index,
                          test: test,
                        ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerSelection extends StatelessWidget {
  final int index;
  final String text;
  final VoidCallback onTap;
  final String test;
  const AnswerSelection({
    Key? key,
    required this.text,
    required this.onTap,
    required this.index,
    required this.test,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuickTestScreenController>(
        init: QuickTestScreenController(),
        builder: (controller) {
          Color getTheRightColor() {
            if (controller.isAnswerd) {
              if (text == controller.correctAns) {
                return trueSelectedColor;
              } else if (index == controller.selectedAns &&
                  text != controller.correctAns) {
                return wrongSelectedColor;
              }
            }
            return itemColor;
          }

          return Column(
            children: [
              SizedBox(height: getScreenHeight(16)),
              InkWell(
                onTap: onTap,
                child: Container(
                  //margin: const EdgeInsets.only(top: 16),
                  padding: EdgeInsets.all(getScreenHeight(16)),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: getTheRightColor(), width: getScreenHeight(1)),
                    borderRadius: BorderRadius.circular(getScreenHeight(10)),
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      text,
                      style: test == "VNJP"
                          ? TextStyle(
                              color: getTheRightColor(),
                              fontSize: getScreenHeight(16),
                              fontFamily: fontJP,
                              fontWeight:
                                  getTheRightColor() == trueSelectedColor
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            )
                          : TextStyle(
                              color: getTheRightColor(),
                              fontSize: getScreenHeight(16),
                              fontFamily:
                                  getTheRightColor() == trueSelectedColor
                                      ? fontVNBold
                                      : fontVN,
                            ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
