import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  final isSearch = false.obs;

  @override
  Widget build(BuildContext context) {
    RxList<Map<String, dynamic>> _sub_list_items = controller.list_items.obs;
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => !isSearch.value
              ? Text(
                  'settings.settings'.tr,
                  style: controller.cfs.appBarTitleTextStyle(),
                )
              : TextField(
                  controller: controller.searchController,
                  decoration: InputDecoration(hintText: 'settings.search'.tr),
                  onChanged: (val) {
                    RegExp exp = RegExp("$val", caseSensitive: false);
                    _sub_list_items.value = controller.list_items
                        .where((element) => exp.hasMatch(element['filter']))
                        .toList();
                  },
                  autofocus: true,
                ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.searchController.clear();
              isSearch.value = !isSearch.value;
              _sub_list_items.value = controller.list_items;
            },
            icon: Obx(
              () => Icon(
                !isSearch.value ? Icons.search : Icons.clear,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: List.of(
                _sub_list_items.map(
                  (e) {
                    return ListTile(
                      onTap: e['onTap'] as Function(),
                      leading: Image.asset(e['leading'] as String),
                      title: Text(
                        (e['title'] as String).tr,
                        style: controller.cfs.menuTitleTextStyle(),
                      ),
                      subtitle: Text(
                        (e['sub_title'] as String).tr,
                        style: controller.cfs.menuSubTitleTextStyle(),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
