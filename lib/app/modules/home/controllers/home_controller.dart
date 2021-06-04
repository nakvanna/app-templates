import 'package:app_templates/app/helper/font_style/custom_fonts_style.dart';
import 'package:app_templates/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CFS cfs = CFS();

  List<Map<String, dynamic>> listDrawerMenuItems(BuildContext context) {
    return [
      {
        'onTap': () {
          Navigator.pop(context);
          Get.toNamed(Routes.SETTINGS);
        },
        'image': 'assets/images/icon-png/settings.png',
        'title': 'drawers.settings',
      },
      {
        'onTap': () {
          Navigator.pop(context);
          Get.toNamed(Routes.ABOUT_US);
        },
        'image': 'assets/images/icon-png/information.png',
        'title': 'drawers.about-us',
      }
    ];
  }

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
}
