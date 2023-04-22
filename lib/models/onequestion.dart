import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core.dart';

class OneQuestion extends StatelessWidget {
  final MockTestQuestion? mockTestQuestion;
  const OneQuestion({
    Key? key,
    this.mockTestQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MocktestScreenTestController mockTestScreenTestController =
        Get.put(MocktestScreenTestController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Câu ${mockTestQuestion!.id}:\n",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: fontVNBold,
                  color: primaryColor,
                  fontSize: getScreenHeight(20),
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                mockTestQuestion!.question.toString(),
                textAlign: TextAlign.left,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: fontJP,
                  color: primaryColor,
                  fontSize: getScreenHeight(20),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        OptionMockTest(
          index: mockTestQuestion!.id,
          answer: mockTestQuestion!.answer1,
          press: () => mockTestScreenTestController.selectAnswer(
              mockTestQuestion!.id!.toInt(),
              mockTestQuestion!.answer1.toString()),
        ),
        OptionMockTest(
          index: mockTestQuestion!.id,
          answer: mockTestQuestion!.answer2,
          press: () => mockTestScreenTestController.selectAnswer(
              mockTestQuestion!.id!.toInt(),
              mockTestQuestion!.answer2.toString()),
        ),
        OptionMockTest(
          index: mockTestQuestion!.id,
          answer: mockTestQuestion!.answer3,
          press: () => mockTestScreenTestController.selectAnswer(
              mockTestQuestion!.id!.toInt(),
              mockTestQuestion!.answer3.toString()),
        ),
        OptionMockTest(
          index: mockTestQuestion!.id,
          answer: mockTestQuestion!.answer4,
          press: () => mockTestScreenTestController.selectAnswer(
              mockTestQuestion!.id!.toInt(),
              mockTestQuestion!.answer4.toString()),
        ),
      ],
    );
  }
}
