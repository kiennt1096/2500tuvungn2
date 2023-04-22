import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: mainTitles,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: fontVN,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(microseconds: 230),
      initialRoute: GetStorage().hasData("check") ? Routes.main : Routes.splash,
      initialBinding: GetStorage().hasData("check")
          ? MainScreenBinding()
          : SplashScreenBinding(),
      getPages: AppPage.routes,
    );
  }
}
