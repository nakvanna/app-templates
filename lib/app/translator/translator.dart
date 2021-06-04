
import 'package:app_templates/app/translator/languages/en_US.dart';
import 'package:app_templates/app/translator/languages/km_KH.dart';
import 'package:get/get.dart';

class Translator extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": LocaleEnUS.en_US,
        "km_KH": LocaleKmKH.km_KH,
      };
}
