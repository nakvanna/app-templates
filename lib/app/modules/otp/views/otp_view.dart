import 'package:app_templates/app/config/size_config.dart';
import 'package:app_templates/app/helper/widgets/rounded_button.dart';
import 'package:app_templates/app/routes/app_pages.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    String pin_code = '';
    double defaultSize = SizeConfig.defaultSize!;
    double screenWidth = SizeConfig.screenWidth!;
    return Scaffold(
      appBar: AppBar(
        title: Text('OtpView'),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ///Layer 1
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  constraints: BoxConstraints(maxHeight: double.infinity),
                ),
              ),
              Hero(
                tag: 'building-bottom',
                child: Image.asset(
                  'assets/images/png/building.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),

          ///Layer 2
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: 'verification',
                  child: Image.asset(
                    'assets/images/png/verification.png',
                  ),
                ),
                SizedBox(
                  height: defaultSize,
                ),
                SizedBox(
                  height: defaultSize,
                ),
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 5,
                  animationType: AnimationType.scale,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    Get.offAllNamed(Routes.HOME);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
                SizedBox(
                  height: defaultSize,
                ),
                RoundedButtonIcon(
                  icon: Icon(CommunityMaterialIcons.lock_check_outline),
                  label: 'Verify',
                  onTap: () {},
                  height: defaultSize * 4.5,
                  width: screenWidth - (2 * defaultSize),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
