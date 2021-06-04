import 'package:app_templates/app/config/size_config.dart';
import 'package:app_templates/app/helper/input_fields/intl_phone/phone_number_input_field.dart';
import 'package:app_templates/app/helper/widgets/rounded_button.dart';
import 'package:app_templates/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'package:community_material_icon/community_material_icon.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //For Auth
    double defaultSize = SizeConfig.defaultSize!;
    double screenWidth = SizeConfig.screenWidth!;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
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
                Image.asset(
                  'assets/images/png/building.png',
                  fit: BoxFit.fill,
                ),
              ],
            ),

            ///Layer 2
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        tooltip: 'Help!',
                        onPressed: () => Get.toNamed(Routes.HELP),
                        icon: Icon(Icons.help_outline),
                      ),
                      IconButton(
                        tooltip: 'Settings',
                        onPressed: () => Get.toNamed(Routes.SETTINGS),
                        icon: Icon(Icons.settings),
                      ),
                    ],
                  ),
                  InkWell(
                    child: FlutterLogo(
                      size: 170,
                    ),
                    onTap: () {
                      Get.toNamed(Routes.SETTINGS);
                    },
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Text(
                    'auths.register-with-a-below-method'.tr,
                    style: controller.cfs.appBarTitleTextStyle(),
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  PhoneNumberInput(
                    onChange: (value) {
                      print(value);
                    },
                    numberStyle: controller.cfs.numberInputTextStyle(),
                    inputController: controller.phoneController,
                    hintText: 'auths.input-phone-number'.tr,
                    hintTextStyle: controller.cfs.simpleTextStyle(),
                    dialogSearchHintText: 'auths.search'.tr,
                  ),
                  RoundedButtonIcon(
                    onTap: () {
                      print('Hello');
                    },
                    height: defaultSize * 4.5,
                    width: screenWidth - (2 * defaultSize),
                    icon: Icon(Icons.phone_android),
                    backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white70,
                    label: 'auths.register-with-phone-number'.tr,
                    labelStyle: controller.cfs.buttonTextStyle(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultSize),
                    child: Text(
                      'auths.or'.tr,
                      style: controller.cfs.cardTitleTextStyle(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedButtonIcon(
                        width: screenWidth / 3,
                        height: defaultSize * 4,
                        backgroundColor: Colors.red[400],
                        label: 'Google',
                        onTap: () {
                          print('Hello world');
                        },
                        icon: Icon(CommunityMaterialIcons.google),
                      ),
                      SizedBox(
                        width: defaultSize,
                      ),
                      RoundedButtonIcon(
                        width: screenWidth / 3,
                        height: defaultSize * 4,
                        label: 'Apple',
                        backgroundColor:
                            Get.isDarkMode ? Colors.white70 : Colors.black54,
                        onTap: () {
                          print('Hello world');
                        },
                        icon: Icon(CommunityMaterialIcons.food_apple),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultSize * 2,
                  ),
                  Container(
                    color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                    width: screenWidth - (2 * defaultSize),
                    height: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
