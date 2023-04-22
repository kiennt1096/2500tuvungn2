import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core.dart';

class FavouriteScreenView extends GetView<FavouriteScreenController> {
  const FavouriteScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(favouriteTitle),
      body: FutureBuilder(
        future: controller.loadFavouriteTangoList(),
        builder: ((context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingWidget();
          } else {
            return Obx(() => controller.favouriteTangoList.isNotEmpty
                ? Container(
                    color: backgroundColor,
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getScreenHeight(16)),
                              child: Column(
                                children: controller.favouriteTangoList
                                    .map((favourite) {
                                  return FavouriteTangoCard(
                                      tango: favourite,
                                      deleteFunction: (() {
                                        controller
                                            .deleteButtonFunction(favourite);
                                      }));
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getScreenHeight(50),
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
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                NormalButton(
                                  title: tangoNhatViet,
                                  onpress: () {
                                    Get.toNamed(Routes.test,
                                        arguments: QuickTestArgument("JPVN",
                                            controller.favouriteTangoList));
                                  },
                                ),
                                NormalButton(
                                  title: tangoVietNhat,
                                  onpress: () {
                                    Get.toNamed(Routes.test,
                                        arguments: QuickTestArgument("VNJP",
                                            controller.favouriteTangoList));
                                  },
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getScreenHeight(100),
                          child: SvgPicture.asset(
                              "assets/icons/undraw_refreshing_beverage_td3r.svg"),
                        ),
                        SizedBox(height: getScreenHeight(16)),
                        Text(
                          favouriteEmpty,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: fontVNBold,
                              fontSize: getScreenHeight(16)),
                        ),
                      ],
                    ),
                  ));
          }
        }),
      ),
    );
  }
}
