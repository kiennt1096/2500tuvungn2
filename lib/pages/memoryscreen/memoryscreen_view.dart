import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core.dart';

class MemoryScreenView extends StatelessWidget {
  final memomyScreenController = Get.put(MemoryScreenController());
  MemoryScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(getScreenHeight(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderMemory(controller: memomyScreenController),
                SizedBox(height: getScreenHeight(16)),
                FutureBuilder(
                    future: memomyScreenController.loadFavouriteTangoList(),
                    builder: ((context, snapshot) {
                      if (snapshot.data == null) {
                        return const LoadingWidget();
                      } else {
                        return Obx(
                          () => memomyScreenController
                                  .favouriteTangoList.isNotEmpty
                              ? MemoryCard(
                                  tango:
                                      memomyScreenController.favouriteTangoList[
                                          memomyScreenController.n.toInt()])
                              : const EmptyCard(),
                        );
                      }
                    })),
              ],
            ),
            BottomButton(controller: memomyScreenController),
          ],
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final MemoryScreenController controller;
  const BottomButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonwithOutline(
              title: memoryDaThuoc,
              borderC: primaryColor,
              backgroundC: backgroundColor,
              textC: primaryColor,
              onPress: controller.daThuocBtn,
            ),
            ButtonwithOutline(
              title: memoryCapnhap,
              borderC: primaryColor,
              backgroundC: backgroundColor,
              textC: primaryColor,
              onPress: controller.capNhapBtn,
            )
          ],
        ),
        SizedBox(height: getScreenHeight(16)),
        ButtonwithOutline(
          title: memoryChuyenTu,
          borderC: primaryColor,
          backgroundC: primaryColor,
          textC: backgroundColor,
          onPress: controller.ramdomBtn,
        )
      ],
    );
  }
}

class MemoryCard extends StatelessWidget {
  final Tango tango;
  const MemoryCard({
    Key? key,
    required this.tango,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getScreenHeight(16)),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(getScreenHeight(20))),
        border: Border.all(
          color: borderColor,
          width: getScreenHeight(1),
        ),
      ),
      child: Column(
        children: [
          Text(
            "${tango.japaneseMain}   ${tango.japaneseExtra}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getScreenHeight(26),
              color: primaryColor,
              fontFamily: fontJP,
            ),
          ),
          SizedBox(height: getScreenHeight(8)),
          Text(
            tango.means.toString(),
            style: TextStyle(
              fontFamily: fontVNBold,
              fontSize: getScreenHeight(24),
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getScreenHeight(8)),
          Text(
            tango.exJP1.toString(),
            style: TextStyle(
              fontSize: getScreenHeight(24),
              color: textColor,
              fontFamily: fontJP,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getScreenHeight(8)),
          Text(
            tango.exMean1.toString(),
            style: TextStyle(
              fontSize: getScreenHeight(24),
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getScreenHeight(8)),
          tango.exJP2 != ""
              ? Column(
                  children: [
                    Text(
                      tango.exJP2.toString(),
                      style: TextStyle(
                        fontSize: getScreenHeight(24),
                        color: textColor,
                        fontFamily: fontJP,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getScreenHeight(8)),
                    Text(
                      tango.exMean2.toString(),
                      style: TextStyle(
                        fontSize: getScreenHeight(24),
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class HeaderMemory extends StatelessWidget {
  const HeaderMemory({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MemoryScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          memoryTuGhiNho,
          style: TextStyle(
            color: textColor,
            fontSize: getScreenHeight(24),
            fontFamily: fontVNBold,
          ),
        ),
        Row(
          children: [
            SmallInkwell(
              onTap: () {
                controller.mockTestBtn();
              },
              icon: const Icon(
                Icons.emoji_events,
                color: textColor,
              ),
            ),
            SizedBox(width: getScreenWidth(5)),
            SmallInkwell(
              onTap: () {
                controller.listGhiNhoBtn();
              },
              icon: const Icon(
                Icons.format_list_bulleted_outlined,
                color: textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class EmptyCard extends StatelessWidget {
  const EmptyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getScreenHeight(16)),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(getScreenHeight(20))),
        border: Border.all(
          color: borderColor,
          width: getScreenHeight(1),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: getScreenHeight(16)),
          SizedBox(
            height: getScreenHeight(100),
            child: SvgPicture.asset("assets/icons/undraw_happy_music_g6wc.svg"),
          ),
          SizedBox(height: getScreenHeight(16)),
          Text(
            memoryEmpty,
            style: TextStyle(
              fontFamily: fontVNBold,
              fontSize: getScreenHeight(16),
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getScreenHeight(32)),
        ],
      ),
    );
  }
}
