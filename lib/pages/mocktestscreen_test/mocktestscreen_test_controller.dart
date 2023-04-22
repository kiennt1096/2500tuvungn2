import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core.dart';

class MocktestScreenTestController extends GetxController {
  MockTest? mockTest;
  List<MockTestQuestion> mockTestQuestionList = [];
  PageController? pageController;
  var questionNumer = 1.obs;
  int notanswer = 0;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController!.dispose();
    super.onClose();
  }

  Future loadJson(String jsonLink) async {
    String dataStringMockTest = await rootBundle.loadString(jsonLink);
    var jsonMockTestResult = json.decode(dataStringMockTest);

    if (jsonMockTestResult != null) {
      var mockTestResult = MockTest.fromJson(jsonMockTestResult);
      mockTestQuestionList = mockTestResult.mocktestquestionList!;
      mockTest = mockTestResult;
      return mockTestResult;
    }
  }

  void selectAnswer(int index, String selectedAnswer) {
    mockTestQuestionList[index - 1].selectedanswer = selectedAnswer;
    if (index == mockTestQuestionList.length) {
      Get.toNamed(Routes.mocktestresult, arguments: mockTestQuestionList);
    } else {
      // print(index);
      // print(mockTestQuestionList.length);
      nextPage();
    }
  }

  void nextPage() {
    pageController!
        .nextPage(
            curve: Curves.ease, duration: const Duration(milliseconds: 250))
        .then((value) {
      if (questionNumer < mockTestQuestionList.length) {
        questionNumer++;
      }
    });
  }

  // void previousPage() {
  //   pageController!
  //       .previousPage(
  //           curve: Curves.ease, duration: const Duration(milliseconds: 250))
  //       .then((value) {
  //     if (questionNumer > 1) {
  //       questionNumer--;
  //     }
  //   });
  // }

  // bool checkComplete() {
  //   notanswer = 0;
  //   for (int i = 0; i < mockTestQuestionList.length; i++) {
  //     if (mockTestQuestionList[i].selectedanswer == null) {
  //       notanswer++;
  //     }
  //   }
  //   if (notanswer == 0) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  void resultBtn() {
    Get.toNamed(Routes.mocktestresult, arguments: mockTestQuestionList);
  }
}
