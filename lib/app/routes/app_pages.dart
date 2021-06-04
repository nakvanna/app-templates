import 'package:app_templates/app/modules/about_us/bindings/about_us_binding.dart';
import 'package:app_templates/app/modules/about_us/views/about_us_view.dart';
import 'package:app_templates/app/modules/auth/bindings/auth_binding.dart';
import 'package:app_templates/app/modules/auth/views/auth_view.dart';
import 'package:app_templates/app/modules/help/bindings/help_binding.dart';
import 'package:app_templates/app/modules/help/views/help_view.dart';
import 'package:app_templates/app/modules/home/bindings/home_binding.dart';
import 'package:app_templates/app/modules/home/views/home_view.dart';
import 'package:app_templates/app/modules/languages/bindings/languages_binding.dart';
import 'package:app_templates/app/modules/languages/views/languages_view.dart';
import 'package:app_templates/app/modules/settings/bindings/settings_binding.dart';
import 'package:app_templates/app/modules/settings/views/settings_view.dart';
import 'package:app_templates/app/modules/splash/views/splash_view.dart';
import 'package:app_templates/app/modules/themes/bindings/themes_binding.dart';
import 'package:app_templates/app/modules/themes/views/themes_view.dart';
import 'package:get/get.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGES,
      page: () => LanguagesView(),
      binding: LanguagesBinding(),
    ),
    GetPage(
      name: _Paths.THEMES,
      page: () => ThemesView(),
      binding: ThemesBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
  ];
}
