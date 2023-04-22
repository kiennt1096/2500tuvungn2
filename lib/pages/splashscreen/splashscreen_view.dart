import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(16),
            vertical: getScreenHeight(32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkipButton(controller: controller),
              ImagesAndText(controller: controller),
              NextPreButton(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}

class NextPreButton extends StatelessWidget {
  const NextPreButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SplashScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleButton50(
            icon: "assets/icons/left.svg",
            iconColor: primaryColor,
            backgroundColor: backgroundColor,
            borderColor: borderColor,
            function: controller.previousButton,
          ),
          CircleButton50(
            icon: controller.icon.toString(),
            iconColor: backgroundColor,
            backgroundColor: primaryColor,
            borderColor: primaryColor,
            function: controller.nextButton,
          ),
        ],
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SplashScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: controller.skipButton,
          child: Text(
            splBoQua,
            style: TextStyle(
              color: textColor,
              fontSize: getScreenHeight(16),
              fontFamily: fontVNBold,
            ),
          ),
        ),
      ],
    );
  }
}

class ImagesAndText extends StatelessWidget {
  final SplashScreenController controller;

  const ImagesAndText({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueBuilder<int?>(
        initialValue: 0,
        builder: (currentContent, updateFn) => Column(
              children: [
                SizedBox(
                  height: getScreenHeight(812) * 0.55,
                  child: PageView(
                    onPageChanged: updateFn,
                    controller: controller.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: controller.splashContent.map((content) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: SvgPicture.asset(content.picture)),
                          SizedBox(height: getScreenHeight(32)),
                          Text(
                            content.title,
                            style: TextStyle(
                              fontSize: getScreenHeight(24),
                              color: primaryColor,
                              fontFamily: fontVNBold,
                            ),
                          ),
                          SizedBox(height: getScreenHeight(32)),
                          Text(
                            content.description,
                            style: TextStyle(
                              fontSize: getScreenHeight(18),
                              color: primaryColor,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                          ),
                          SizedBox(height: getScreenHeight(32)),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.splashContent
                      .map((content) => controller.buildIndicator(
                          controller.splashContent.indexOf(content) ==
                              currentContent))
                      .toList(),
                ),
              ],
            ));
  }
}
