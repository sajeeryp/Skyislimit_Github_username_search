import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/home/controller/repo_controller.dart';

import '../modules/home/controller/profile_controller.dart';
// import '../utils/languages/language_controller.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(LanguageController(), permanent: true);
    // Get.put(HomeController(), permanent: true);
    Get.put(RepositoryController(), permanent: true);
    Get.put(ProfileController(), permanent: true);
  }
}
