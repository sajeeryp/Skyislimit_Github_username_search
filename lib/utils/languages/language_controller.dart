// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

const String LANGUAGE_CODE_RTL = 'languageCode';
//languages code
const String ENGLISH = 'en';
const String ARABIC = 'ar';

// get Locale using language code
Locale locale(String languageCode) {
  //commonPrint(languageCode);
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, 'US');
    case ARABIC:
      return const Locale(ARABIC, 'SA');
    default:
      return const Locale(ENGLISH, 'SA');
  }
}

class LanguageController extends GetxController {
  int languageId = 2;
  @override
  // ignore: unnecessary_overrides
  void onInit() async {
    await getLanguage();
    super.onInit();
  }

  switchLanguage() async {
    var currentLanguage = Get.locale;

    if (currentLanguage == const Locale(ENGLISH, 'US')) {
      await updateToArabic();
      // languageId = 1;
    }
    if (currentLanguage == const Locale(ARABIC, 'SA')) {
      await updateToEnglish();
      // languageId = 2;
    }
    update(['language']);
    update(['home']);
    update();
  }

  updateToArabic() async {
    languageId = 2;
    Get.updateLocale(locale(ARABIC));
    update(['language']);
    update(['home']);
    update();
  }

  updateToEnglish() async {
    languageId = 1;
    Get.updateLocale(locale(ENGLISH));
    update(['language']);
    update(['home']);
    update();
  }

  // get language from shared preference
  Future<Locale> getLocale() async {
    String languageCode = ARABIC;
    if (languageCode == ENGLISH) {
      languageId = 1;
    } else {
      languageId = 2;
    }
    update();
    update(['language']);
    update(['home']);
    return locale(languageCode);
  }

  Future getLanguage() async {
    await getLocale().then((locale) => Get.updateLocale(locale));
    update(['language']);
    update(['home']);
    // return Get.locale ?? locale(ENGLISH);
  }
}
