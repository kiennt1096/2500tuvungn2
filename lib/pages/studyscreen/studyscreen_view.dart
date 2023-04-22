import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class StudyScreenView extends StatelessWidget {
  final controller = Get.put(StudyScreenController());
  StudyScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: getScreenHeight(16),
          left: getScreenHeight(16),
          right: getScreenHeight(16),
        ),
        color: backgroundColor,
        child: Column(
          children: [
            const Header(),
            SizedBox(height: getScreenHeight(16)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: controller.chapterList.map((chapter) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: borderColor, width: getScreenHeight(1)),
                        borderRadius: BorderRadius.all(
                            Radius.circular(getScreenHeight(10))),
                      ),
                      elevation: 0,
                      child: MyExpansionTileCard(
                        title: ChapterCard(chapter: chapter),
                        children: chapter.sectionList.map((section) {
                          return SectionCard(
                            section: section,
                            function: () {
                              Get.toNamed(Routes.tangolist, arguments: [
                                section.linkSection.toString(),
                                section.linkAudio.toString(),
                              ]);
                            },
                          );
                        }).toList(),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          studyHocTuVung,
          style: TextStyle(
            color: textColor,
            fontSize: getScreenHeight(24),
            fontFamily: fontVNBold,
          ),
        ),
      ],
    );
  }
}
