// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/home/screens/home_view.dart';
import 'package:skyislimit_demo/routes/state_binding.dart';

import '../modules/common/components/no_internet_screen.dart';
import '../modules/common/components/url_wrong.dart';
import '../modules/common/screens/initial_loading_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  //00 COMMON
  static const INITIAL_LOADING_SCREEN = Routes.INITIAL_LOADING_SCREEN;
  static const NO_INTERNET_SCREEN = Routes.NO_INTERNET_SCREEN;
  static const NO_URL_SCREEN = Routes.NO_URL_SCREEN;
  static const NO_DATA_SCREEN = Routes.NO_DATA_SCREEN;

  //05 HOME

  static const HOME = Routes.HOME;

  static final routes = [
    // 00 COMMON
    GetPage(
      name: _Paths.INITIAL_LOADING_SCREEN,
      page: () => const InitialLoadingScreen(),
      binding: GeneralBinding(),
    ),

    GetPage(
      name: _Paths.NO_INTERNET_SCREEN,
      page: () => const NoInternetScreen(),
      binding: GeneralBinding(),
    ),
    GetPage(
      name: _Paths.NO_URL_SCREEN,
      page: () => const NoUrlScreen(),
      binding: GeneralBinding(),
    ),
    // GetPage(
    //   name: _Paths.NO_DATA_SCREEN,
    //   // page: () => const NoDataScreen(),
    //   binding: GeneralBinding(),
    // ),

    GetPage(
        name: _Paths.HOME,
        page: () =>  HomeView(),
        binding: GeneralBinding(),
        children: const []),
  ];
}
