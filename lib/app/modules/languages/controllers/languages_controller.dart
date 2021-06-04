import 'dart:ui';

import 'package:app_templates/app/data/persistent/persistent_data.dart';
import 'package:app_templates/app/helper/font_style/custom_fonts_style.dart';
import 'package:get/get.dart';

class LanguagesController extends GetxController {
  final PersistentData _persistentData = PersistentData();
  final CFS cfs = CFS();
  final List<Map<String, dynamic>> list_language_items = [
    {
      'localeCode': 'km_KH',
      'language': 'ភាសាខ្មែរ',
      'image': 'assets/images/icon-png/cambodia.png',
    },
    {
      'localeCode': 'en_US',
      'language': 'English',
      'image': 'assets/images/icon-png/united-kingdom.png',
    },
  ];

  List<String> _list_locale = [];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void setLocaleCode(String locale_code) {
    _persistentData.writeLocaleCode(locale_code);
  }

  String getLocaleCode() {
    return _persistentData.readLocaleCode();
  }

  void changeLocaleCode(String _locale_code) {
    _list_locale = _locale_code.split('_');
    Locale _locale = Locale(_list_locale[0], _list_locale[1]);
    Get.updateLocale(_locale);
  }
}
