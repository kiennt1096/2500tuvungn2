import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../core.dart';

class QuickTestScreenController extends GetxController {
  PageController? pageController;
  bool isAnswerd = false;
  bool isJPVN = true;
  String? correctAns;
  int? selectedAns;
  var questionNumber = 1.obs;
  int numOfCorrectAns = 0;
  int time = int.parse(GetStorage().read("time").toString());

  List<Tango> tangoList = [];
  List<TangoTest> tangoTestList = [];
  List<TangoTestResult> tangoTestResultList = [];

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

  moveDataJPVN(List<Tango> tangoList) {
    for (int i = 0; i < tangoList.length; i++) {
      TangoTest tangoTest = TangoTest(0, "", "", "", []);
      tangoTest.id = tangoList[i].id!;
      tangoTest.question = tangoList[i].japaneseMain!;
      tangoTest.questionExtend = tangoList[i].japaneseExtra!;
      tangoTest.trueAnswerd = tangoList[i].means!;
      tangoTest.selection.add(tangoList[i].means.toString());
      // while (tangoTest.selection.length < 4) {
      //   int a = Random().nextInt(tangoList.length);
      //   if (!tangoTest.selection.contains(tangoList[a].means) &&
      //       !tangoTest.selection.contains(tangoList[i].means)) {
      //     tangoTest.selection.add(tangoList[a].means.toString());
      //   }
      // }
      tangoTest.selection
          .add(tangoList[Random().nextInt(tangoList.length)].means.toString());
      tangoTest.selection
          .add(tangoList[Random().nextInt(tangoList.length)].means.toString());
      tangoTest.selection
          .add(tangoList[Random().nextInt(tangoList.length)].means.toString());
      tangoTest.selection.shuffle();
      tangoTestList.add(tangoTest);
    }
  }

  moveDataVNJP(List<Tango> tangoList) {
    isJPVN = false;
    for (int i = 0; i < tangoList.length; i++) {
      TangoTest tangoTest = TangoTest(0, "", "", "", []);
      tangoTest.id = tangoList[i].id!;
      tangoTest.question = tangoList[i].means!;
      tangoTest.trueAnswerd = tangoList[i].japaneseMain!;
      tangoTest.selection.add(tangoList[i].japaneseMain.toString());
      tangoTest.selection.add(tangoList[Random().nextInt(tangoList.length)]
          .japaneseMain
          .toString());
      tangoTest.selection.add(tangoList[Random().nextInt(tangoList.length)]
          .japaneseMain
          .toString());
      tangoTest.selection.add(tangoList[Random().nextInt(tangoList.length)]
          .japaneseMain
          .toString());
      tangoTest.selection.shuffle();
      tangoTestList.add(tangoTest);
    }
  }

  void checkAns(TangoTest tangoTest, int selectedIndex) {
    isAnswerd = true;
    correctAns = tangoTest.trueAnswerd;
    selectedAns = selectedIndex;
    TangoTestResult tangoTestResult = TangoTestResult(0, "", "", "", "", false);
    if (tangoTest.trueAnswerd == tangoTest.selection[selectedIndex]) {
      numOfCorrectAns++;
      tangoTestResult.id = tangoTest.id;
      tangoTestResult.question = tangoTest.question;
      tangoTestResult.trueAnswer = tangoTest.trueAnswerd;
      tangoTestResult.selectedAnswer = tangoTest.selection[selectedIndex];
      tangoTestResult.result = true;
    } else {
      tangoTestResult.id = tangoTest.id;
      tangoTestResult.question = tangoTest.question;
      tangoTestResult.trueAnswer = tangoTest.trueAnswerd;
      tangoTestResult.extend = tangoTest.questionExtend;
      tangoTestResult.selectedAnswer = tangoTest.selection[selectedIndex];
      tangoTestResult.result = false;
    }
    if (tangoTestResultList.length < tangoTestList.length) {
      tangoTestResultList.add(tangoTestResult);
    }
    update();
    Future.delayed(Duration(seconds: time), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    (questionNumber);
    if (questionNumber.toInt() != tangoTestList.length) {
      isAnswerd = false;
      pageController!.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);
    } else {
      // print(numOfCorrectAns);
      // print(tangoTestResultList.toString());
      Get.toNamed("/resultscreen",
          arguments: ResultArgument(
            tangoTestResultList,
            numOfCorrectAns,
            isJPVN ? "JPVN" : "VNJP",
          ));
    }
  }

  void updateTheQuestionNumber(int index) {
    questionNumber.value = index + 1;
  }
}
