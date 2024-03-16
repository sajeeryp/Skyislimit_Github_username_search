import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/home/screens/home_view.dart';
import 'package:skyislimit_demo/utils/languages/language_controller.dart';

import 'routes/app_pages.dart';
import 'routes/state_binding.dart';

Future<void> main() async {
  runApp(const SkyislimitDemo());
}

class SkyislimitDemo extends StatelessWidget {
  const SkyislimitDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: AppPages.INITIAL_LOADING_SCREEN,
      home:  HomeView(),
      onInit: (() {
        // Get.find<HomeController>().updateOrrientaion();
      }),
      getPages: AppPages.routes,
      // translations: Languages(),
      navigatorKey: Get.key,
      initialBinding: GeneralBinding(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale(ENGLISH, 'US'),
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
