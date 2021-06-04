import 'package:get/get.dart';

class PhoneNumberInputController extends GetxController {
  String? dialCode;
  String phoneNumber = '0';
  RxString validate_message = ''.obs;

  String fullPhoneNumber() {
    phoneNumber = phoneNumber.replaceFirst(new RegExp(r'^0+'), '');
    return '$dialCode$phoneNumber';
  }

  String validateMobile(String value) {
    String source = r'(^(?:[+0]9)?[0-9]{8,10}$)';
    RegExp regExp = new RegExp(source);
    if (value.length == 0) {
      return 'auths.please-enter-a-valid-phone-number';
    } else if (!regExp.hasMatch(value)) {
      return 'auths.you-have-entered-an-invalid-phone-number.please-try-again';
    } else {
      return '';
    }
  }

  @override
  void onInit() {
    print('On init!');
    super.onInit();
  }
}
