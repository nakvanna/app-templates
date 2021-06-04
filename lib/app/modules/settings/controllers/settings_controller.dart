import 'package:app_templates/app/helper/font_style/custom_fonts_style.dart';
import 'package:app_templates/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final CFS cfs = CFS();
  List<Map<String, dynamic>> list_items = [
    {
      'onTap': () {
        Get.toNamed(Routes.LANGUAGES);
      },
      'leading': 'assets/images/icon-png/planet-earth.png',
      'title': 'settings.languages',
      'sub_title': 'settings.change-to-your-language',
      'filter': 'Languages, English, Khmer, Change to your language',
    },
    {
      'onTap': () {
        Get.toNamed(Routes.THEMES);
      },
      'leading': 'assets/images/icon-png/theme.png',
      'title': 'settings.themes',
      'sub_title': 'settings.choose-your-favorite-theme',
      'filter': 'Themes, Dark Mode, Light Mode, Choose your favorite theme',
    },
  ];
  late TextEditingController searchController;

  final count = 0.obs;
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchController.dispose();
  }
}
