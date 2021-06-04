import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/themes_controller.dart';

class ThemesView extends GetView<ThemesController> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _list_items = controller.list_theme_items;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'themes.themes'.tr,
          style: controller.cfs.appBarTitleTextStyle(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.of(
              _list_items.map(
                (e) => CheckboxListTile(
                  value: e['brightness'] == controller.readTheme(),
                  onChanged: (_) {
                    controller.writeTheme(e['brightness']);
                    Get.changeTheme(controller.readTheme() == 'dark'
                        ? ThemeData.dark()
                        : ThemeData.light());
                  },
                  secondary: Image.asset(e['image'] as String),
                  title: Text(
                    (e['theme'] as String).tr,
                    style: controller.cfs.menuTitleTextStyle(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
