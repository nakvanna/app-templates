import 'package:app_templates/app/helper/input_fields/intl_phone/phone_number_input_controller.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumberInput extends GetView<PhoneNumberInputController> {
  PhoneNumberInput({
    Key? key,
    required this.numberStyle,
    required this.inputController,
    this.hintText: 'phone-number',
    this.dialogSearchHintText: 'search',
    this.hintTextStyle,
    this.validateMessageTextStyle: const TextStyle(color: Colors.red),
    this.padding: 8.0,
    required this.onChange,
  }) : super(key: key);

  final TextStyle numberStyle;
  final TextEditingController inputController;
  final String hintText;
  final String dialogSearchHintText;
  final TextStyle? hintTextStyle;
  final TextStyle? validateMessageTextStyle;
  final double padding;
  final Function(String value) onChange;

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<PhoneNumberInputController>(() => PhoneNumberInputController());

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Get.isDarkMode ? Colors.white70 : Colors.black54,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 8.0,
                ),
                CountryCodePicker(
                  onInit: (_code) {
                    controller.dialCode = _code!.dialCode;
                  },
                  padding: EdgeInsets.all(0),
                  initialSelection: 'KH',
                  favorite: ['+855', 'KH'],
                  onChanged: (_code) {
                    controller.dialCode = _code.dialCode;
                    onChange(controller.fullPhoneNumber());
                  },
                  showDropDownButton: true,
                  showFlagDialog: true,
                  textStyle: numberStyle,
                  searchDecoration: InputDecoration(
                    hintText: dialogSearchHintText,
                  ),
                  dialogBackgroundColor:
                      Get.isDarkMode ? Colors.black54 : Colors.white70,
                  dialogTextStyle: TextStyle(
                    color: Get.isDarkMode ? Colors.white70 : Colors.black,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    style: numberStyle,
                    controller: inputController,
                    onChanged: (_value) {
                      controller.phoneNumber = _value;
                      controller.validate_message.value =
                          controller.validateMobile(_value);
                      onChange(controller.fullPhoneNumber());
                    },
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: hintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Obx(
              () => Text(
                controller.validate_message.value.tr,
                style: validateMessageTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
