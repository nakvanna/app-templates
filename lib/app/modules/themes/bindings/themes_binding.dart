import 'package:get/get.dart';

import '../controllers/themes_controller.dart';

class ThemesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemesController>(
      () => ThemesController(),
    );
  }
}
