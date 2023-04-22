import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core.dart';

class TangoListScreenController extends GetxController {
  List<Tango> tangoList = [];
  Section? section;
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer audioPlayer2 = AudioPlayer();
  var audioPlayerState = PlayerState.PAUSED.obs;
  RxInt audioPostion = 0.obs;
  RxInt audioDuration = 0.obs;
  bool showSnackbar = false;

  @override
  void onInit() {
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      audioPlayerState.value = state;
    });
    audioPlayer.onDurationChanged.listen((Duration duration) {
      audioDuration.value = duration.inSeconds;
    });
    audioPlayer.onAudioPositionChanged.listen((Duration duration) {
      audioPostion.value = duration.inSeconds;
    });
    super.onInit();
  }

  @override
  void onClose() {
    audioPlayer.release();
    audioPlayer.dispose();
    audioPlayer2.release();
    audioPlayer2.dispose();
    super.onClose();
  }

  Future loadJson({String? sectionLink}) async {
    //print(sectionLink);
    String dataStringSection = await rootBundle.loadString(sectionLink!);
    var jsonSectionResult = json.decode(dataStringSection);
    if (jsonSectionResult != null) {
      var sectionResult = Section.fromJson(jsonSectionResult);
      tangoList = sectionResult.tangoList!;
      section = sectionResult;
      return sectionResult;
    }
  }

  favouriteButtonFunction(Tango tango) async {
    int check = await DatabaseHelper.instance.checkTango(tango.id!.toInt());
    if (check == 0) {
      try {
        await DatabaseHelper.instance.insertTango(tango);
        //print("insert thanh cong");
        //printFavouriteList();
        Get.snackbar(
          snackbarTC,
          "Đã thêm 「${tango.japaneseMain}」 vào Ghi Nhớ!",
          backgroundColor: trueSelectedColor,
          duration: const Duration(seconds: 1),
          colorText: backgroundColor,
        );
      } catch (e) {
        Get.snackbar(snackbarTB, snackbarError);
      }
    } else {
      //printFavouriteList();
      Get.snackbar(
        snackbarTB,
        "Từ 「${tango.japaneseMain.toString()}」 đã tồn tại trong Ghi Nhớ!",
        backgroundColor: primaryColor,
        duration: const Duration(seconds: 1),
        colorText: backgroundColor,
      );
    }
  }

  checkTangoFunction(Tango tango) async {
    int check = await DatabaseHelper.instance.checkTango(tango.id!.toInt());
    if (check == 0) {
      return true;
    } else {
      return false;
    }
  }

  playMusic(String url) async {
    audioPlayer.play(url);
    // print(getTimeString(audioDuration.value));
    // print(audioPostion.value);
    // print(audioPlayerState.value);
    if (showSnackbar == false) {
      Get.snackbar(
        audioLoad,
        audioWait,
        backgroundColor: trueSelectedColor,
        duration: const Duration(seconds: 1),
        colorText: backgroundColor,
      );
      showSnackbar = true;
    }
  }

  pauseMusic() {
    audioPlayer.pause();
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    audioPlayer.seek(newPos);
  }

  String getTimeString(int seconds) {
    String minuteString =
        '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
    String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
    return '$minuteString:$secondString';
  }

  Future playTangoAudio(String fileName) async {
    String tangoAudioURL =
        await FirebaseStorage.instance.ref(fileName).getDownloadURL();
    // print(tangoAudioURL);
    await audioPlayer2.play(tangoAudioURL);
  }
}
