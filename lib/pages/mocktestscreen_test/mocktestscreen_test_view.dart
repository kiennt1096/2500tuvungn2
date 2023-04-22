import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenTestView extends GetView<MocktestScreenTestController> {
  const MocktestScreenTestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$mocktestChuong ${arguments[0]}",
          style: const TextStyle(
            color: primaryColor,
            fontFamily: fontVNBold,
          ),
        ),
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: textColor),
        shadowColor: backgroundColor,
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: getScreenHeight(8)),
              child: InkWell(
                onTap: () {
                  controller.resultBtn();
                },
                child: Text(
                  mocktestNopBai,
                  style: TextStyle(
                      color: rememberColor,
                      fontFamily: fontVNBold,
                      fontSize: getScreenHeight(20)),
                ),
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: controller.loadJson(arguments[1]),
        builder: ((context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingWidget();
          } else {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(getScreenWidth(10)),
                    ),
                    child: PageView.builder(
                      //physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.mockTestQuestionList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(getScreenHeight(16)),
                        child: OneQuestion(
                            mockTestQuestion:
                                controller.mockTestQuestionList[index]),
                      ),
                      controller: controller.pageController,
                    ),
                  ),
                )
              ],
            );
          }
        }),
      ),
    );
  }
}
