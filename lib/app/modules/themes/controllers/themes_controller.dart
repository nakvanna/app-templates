import 'package:app_templates/app/data/persistent/persistent_data.dart';
import 'package:app_templates/app/helper/font_style/custom_fonts_style.dart';
import 'package:get/get.dart';

class ThemesController extends GetxController {
  final PersistentData _persistentData = PersistentData();
  final CFS cfs = CFS();
  final List<Map<String, dynamic>> list_theme_items = [
    {
      'brightness': 'dark',
      'theme': 'themes.dark-mode',
      'image': 'assets/images/icon-png/moon.png',
    },
    {
      'brightness': 'light',
      'theme': 'themes.light-mode',
      'image': 'assets/images/icon-png/sun.png',
    },
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _persistentData.dispose();
  }

  void writeTheme(String brightness) {
    _persistentData.writeTheme(brightness);
  }

  String readTheme() {
    return _persistentData.readTheme();
  }
}
