import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class SettingScreenView extends StatelessWidget {
  final controller = Get.put(SettingScreenController());
  SettingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(getScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              settings,
              style: TextStyle(
                color: textColor,
                fontSize: getScreenHeight(24),
                fontFamily: fontVNBold,
              ),
            ),
            SizedBox(height: getScreenHeight(16)),
            Text(
              settingsTitles,
              style: TextStyle(
                color: textColor,
                fontSize: getScreenHeight(16),
                fontFamily: fontVN,
              ),
            ),
            SizedBox(height: getScreenHeight(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonwithOutline(
                  title: "-",
                  borderC: primaryColor,
                  backgroundC: backgroundColor,
                  onPress: () {
                    controller.truButton();
                  },
                  textC: primaryColor,
                ),
                Obx(() => Text(
                      "${controller.time} (giây)",
                      style: TextStyle(
                        color: textColor,
                        fontSize: getScreenHeight(24),
                        fontFamily: fontVNBold,
                      ),
                    )),
                ButtonwithOutline(
                  title: "+",
                  borderC: primaryColor,
                  backgroundC: backgroundColor,
                  onPress: () {
                    controller.congButton();
                  },
                  textC: primaryColor,
                )
              ],
            ),
            const Spacer(),
            ButtonwithOutline(
              title: settingsSave,
              borderC: primaryColor,
              backgroundC: primaryColor,
              onPress: () {
                controller.saveButton();
              },
              textC: backgroundColor,
            )
          ],
        ),
      ),
    );
  }
}
