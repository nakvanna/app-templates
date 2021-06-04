import 'package:app_templates/app/helper/font_style/custom_fonts_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final CFS cfs = CFS();
  late TextEditingController phoneController;
  final RxString validate_message = ''.obs;

  @override
  void onInit() {
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
  }

  String validateMobile(String value) {
    String source = r'(^(?:[+0]9)?[0-9]{9,10}$)';
    RegExp regExp = new RegExp(source);
    if (value.length == 0) {
      return 'auths.please-enter-a-valid-phone-number';
    } else if (!regExp.hasMatch(value)) {
      return 'auths.you-have-entered-an-invalid-phone-number.please-try-again';
    } else {
      return '';
    }
  }
}
