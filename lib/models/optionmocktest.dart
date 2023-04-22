import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../core.dart';

class OptionMockTest extends StatelessWidget {
  final int? index;
  final String? answer;
  final VoidCallback? press;
  const OptionMockTest({
    Key? key,
    this.answer,
    this.press,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MocktestScreenTestController>(
        init: MocktestScreenTestController(),
        builder: (controller) {
          Color getColor() {
            if (answer ==
                controller.mockTestQuestionList[index! - 1].selectedanswer) {
              return Colors.black;
            } else {
              return textColor;
            }
          }

          return Column(
            children: [
              InkWell(
                onTap: press,
                child: Container(
                  //margin: const EdgeInsets.only(top: 16),
                  padding: EdgeInsets.all(getScreenHeight(16)),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: getColor(),
                        width: getColor() == Colors.black
                            ? getScreenHeight(3)
                            : getScreenHeight(1)),
                    borderRadius: BorderRadius.circular(getScreenHeight(10)),
                  ),
                  width: double.infinity,
                  child: Text(
                    answer.toString(),
                    style: TextStyle(
                      fontFamily: fontJP,
                      color: getColor(),
                      fontSize: getScreenHeight(16),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: getScreenHeight(16)),
            ],
          );
        });
  }
}
