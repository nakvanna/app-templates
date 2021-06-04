import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/languages_controller.dart';

class LanguagesView extends GetView<LanguagesController> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _list_items = controller.list_language_items;
    // print(_list_items);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'languages.languages'.tr,
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
                  value: e['localeCode'] == controller.getLocaleCode(),
                  onChanged: (_) {
                    controller.setLocaleCode(e['localeCode']);
                    controller.changeLocaleCode(e['localeCode']);
                    Get.snackbar(
                      '',
                      '',
                      titleText: Text(
                        'languages.notify'.tr,
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      messageText: Text(
                        'languages.restart-your-app-to-load-font-style'.tr,
                        // style: TextStyle(color: Colors.red),
                      ),
                      duration: Duration(seconds: 3),
                    );
                  },
                  secondary: Image.asset(e['image']),
                  title: Text(e['language']),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
