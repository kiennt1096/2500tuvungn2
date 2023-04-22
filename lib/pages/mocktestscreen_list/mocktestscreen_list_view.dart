import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenListView extends GetView<MocktestScreenListController> {
  const MocktestScreenListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(mocktestTitle),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getScreenHeight(8)),
                Column(
                  children: controller.chapterList.map((chapter) {
                    return MocktestChapterCard(
                      chapter: chapter,
                      onTap: () {
                        Get.toNamed(Routes.mocktesttest, arguments: [
                          chapter.number.toString(),
                          chapter.mockTestLink
                        ]);
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: getScreenHeight(8)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
