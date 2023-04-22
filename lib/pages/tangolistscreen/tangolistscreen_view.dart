import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class TangoListScreenView extends GetView<TangoListScreenController> {
  const TangoListScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return FutureBuilder(
      future: controller.loadJson(sectionLink: arguments[0]),
      builder: ((context, snapshot) {
        if (snapshot.data == null) {
          //print(snapshot.data);
          return const LoadingWidget();
        } else {
          return Scaffold(
            appBar:
                myAppbar((snapshot.data as Section).nameSectionVN.toString()),
            body: Container(
              color: backgroundColor,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getScreenHeight(16)),
                        child: Column(
                          children: controller.tangoList.map((tango) {
                            return TangoCard(
                              tango: tango,
                              audioFunction: () {
                                controller
                                    .playTangoAudio(tango.audio.toString());
                              },
                              favourtiesFunction: () {
                                controller.favouriteButtonFunction(tango);
                                // print(controller
                                //     .checkTangoFunction(tango)
                                //     .toString());
                              },
                              // checkTango:
                              //     controller.checkTangoFunction(tango) == false
                              //         ? true
                              //         : false,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: textColor.withOpacity(.3),
                          offset: const Offset(2, 0),
                          blurRadius: getScreenHeight(20),
                          spreadRadius: 3,
                        ),
                      ],
                      color: backgroundColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: getScreenHeight(8)),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getScreenHeight(16)),
                            child: Obx(
                              () => AudioBar(
                                controller: controller,
                                icon: controller.audioPlayerState.value ==
                                        PlayerState.PLAYING
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                playButtonFunction: () {
                                  controller.audioPlayerState.value ==
                                          PlayerState.PLAYING
                                      ? controller.pauseMusic()
                                      : controller
                                          .playMusic(arguments[1].toString());
                                },
                                audioDuration: controller
                                    .getTimeString(
                                        controller.audioPostion.value)
                                    .toString(),
                                audioDurationNumber:
                                    controller.audioDuration.value,
                                audioPostionNumber:
                                    controller.audioPostion.value,
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            NormalButton(
                              title: tangoNhatViet,
                              onpress: () {
                                Get.toNamed(Routes.test,
                                    arguments: QuickTestArgument(
                                        "JPVN", controller.tangoList));
                              },
                            ),
                            NormalButton(
                              title: tangoFlashCard,
                              onpress: () {
                                Get.toNamed(Routes.flashcard,
                                    arguments: controller.tangoList);
                              },
                            ),
                            NormalButton(
                              title: tangoVietNhat,
                              onpress: () {
                                Get.toNamed(Routes.test,
                                    arguments: QuickTestArgument(
                                        "VNJP", controller.tangoList));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}

class NormalButton extends StatelessWidget {
  final String title;
  final Function() onpress;
  const NormalButton({
    Key? key,
    required this.title,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      style: TextButton.styleFrom(backgroundColor: primaryColor),
      child: Text(
        title,
        style: TextStyle(
          color: backgroundColor,
          fontFamily: fontVNBold,
          fontSize: getScreenHeight(12),
        ),
      ),
    );
  }
}
