import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class MainScreenView extends GetView<MainScreenController> {
  MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => FloatingNavbar(
          backgroundColor: primaryColor,
          selectedItemColor: primaryColor,
          currentIndex: controller.selectedIndex.toInt(),
          items: [
            FloatingNavbarItem(icon: Icons.abc_rounded, title: mainTuVung),
            FloatingNavbarItem(icon: Icons.bolt_outlined, title: mainGhinho),
            FloatingNavbarItem(icon: Icons.settings, title: mainCaidat),
          ],
          onTap: (int val) {
            controller.onItemTapped(val);
          },
        ),
      ),
      body: Obx(() => list.elementAt(controller.selectedIndex.toInt())),
    );
  }

  final List<Widget> list = [
    StudyScreenView(),
    MemoryScreenView(),
    SettingScreenView(),
  ];
}
