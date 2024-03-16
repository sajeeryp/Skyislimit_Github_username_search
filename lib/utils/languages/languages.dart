import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
//   English translations

        'en_EN': {
          // common words
          '01_rtl': 'left',
          'English': 'English',
          'Arabic': 'Arabic',
       
        },

//   Arabic translations
        'ar_SA': {
          // common words
          '01_rtl': 'متأكد',
          'English': 'إنجليزي',
          'Arabic': 'عربي',
         
        }
      };
}
