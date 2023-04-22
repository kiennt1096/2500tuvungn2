import 'package:get/get.dart';

import '../core.dart';

part 'app_routes.dart';

class AppPage {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.main,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: Routes.tangolist,
      page: (() => const TangoListScreenView()),
      binding: TangoListScreenBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.flashcard,
      page: (() => const FlashCardScreenView()),
      binding: FlashCardScreenBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.test,
      page: (() => const QuickTestScreenView()),
      binding: QuickTestScreenBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.result,
      page: (() => const ResultScreenView()),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.favourite,
      page: (() => const FavouriteScreenView()),
      binding: FavouriteScreenBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.mocktestlist,
      page: (() => const MocktestScreenListView()),
      binding: MocktestScreenListBinding(),
    ),
    GetPage(
      name: Routes.mocktesttest,
      page: () => const MocktestScreenTestView(),
      binding: MocktestScreenTestBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.mocktestresult,
      page: () => const MocktestScreenResult(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    )
  ];
}
