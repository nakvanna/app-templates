import 'package:app_templates/app/data/persistent/persistent_data.dart';
import 'package:app_templates/app/modules/languages/controllers/languages_controller.dart';
import 'package:app_templates/app/translator/translator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  final PersistentData _persistentData = PersistentData();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onInit: () async {
        final _language = LanguagesController();
        Future.delayed(Duration(seconds: 2), () {
          String _localeCode = _persistentData.readLocaleCode();
          _language.changeLocaleCode(_localeCode);
          Get.offAllNamed(Routes.AUTH);
        });
      },
      theme: ThemeData(
        brightness: _persistentData.readTheme() == 'dark'
            ? Brightness.dark
            : Brightness.light,
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: Locale('km', 'KH'), //Default locale
      fallbackLocale: Locale('km', 'KH'), //Fall back locale
      translations: Translator(),
      defaultTransition: Transition.rightToLeftWithFade,
    ),
  );
}