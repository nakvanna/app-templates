import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PersistentData extends GetxController {
  final box = GetStorage();
  final String brightnessKey = 'BRIGHTNESS_KEY';
  final String localeCodeKey = 'LOCALE_CODE_KEY';

  void writeTheme(String _brightness) {
    box.write(brightnessKey, _brightness);
  }

  void writeLocaleCode(String _locale_code) {
    box.write(localeCodeKey, _locale_code);
  }

  String readTheme() {
    return box.read(brightnessKey) ?? 'light';
  }

  String readLocaleCode() {
    return box.read(localeCodeKey) ?? 'kh_KH';
  }
}
